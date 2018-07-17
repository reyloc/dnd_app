# frozen_string_literal: false

# Application helper
module ApplicationHelper
  def make_table(t)
    tag.div do
      tag.table({class: 'table table-striped table-hover table-sm'}) do
        if t.caption.empty?
          cap = ''
        else
          cap = tag.caption t.caption, {style: 'caption-side:top;',
                                        class: 'text-center'}
        end
        head = tag.thead do
          tr = ''
          t.headers.to_hash['headers'].each_with_index do |arr,ind|
            tr += tag.tr do
              th = ''
              arr.each_with_index do |h,i|
                th += tag.th h, {colspan: t.headers.to_hash['spacing'][ind][i],
                                 class: 'text-center'}
              end
              raw th
            end
          end
          raw tr
        end
        body = tag.tbody do
          tr = ''
          t.rows.to_hash['rows'].each_with_index do |arr,ind|
            tr += tag.tr do
              td = ''
              arr.each_with_index do |r,i|
                td += tag.td r, {colspan: t.rows.to_hash['spacing'][i],
                                 class: 'text-center'}
              end
              raw td
            end
          end
          raw tr
        end
        raw cap + head + body
      end
    end
  end

  def humanize_float(num)
    parts = num.to_r.to_s.split('/')
    return parts.first if parts.last == '1'
    return "#{get_number(parts)} #{get_ration(parts)}" if parts.first.to_i > parts.last.to_i
    "#{parts.first}/#{parts.last}"
  end

  def get_number(parts)
    parts.first.to_i / parts.last.to_i
  end

  def get_modulo(parts)
    (parts.first.to_i % parts.last.to_i)
  end

  def get_ration(parts)
    (get_module(parts).to_f / parts.last.to_f).to_r
  end
end

ActionController::Base.class_eval do
  helper ApplicationHelper
end
