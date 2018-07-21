# frozen_string_literal: false

# Application helper
module ApplicationHelper
  def make_table(tbl)
    tag.div do
      tag.table(class: 'table table-striped table-hover table-sm') do
        caption = get_caption(tbl)
        head = get_head(tbl)
        body = get_body(tbl)
        raw caption + head + body
      end
    end
  end

  def get_caption(table)
    return '' if table.caption.empty?
    tag.caption table.caption, style: 'caption-side:top;',
                               class: 'text-center'
  end

  def get_head(table)
    tag.thead({class: 'thead-dark'}) do
      tr = ''
      table.head.to_hash['headers'].each_with_index do |arr, ind|
        tr += get_head_tr(table, arr, ind)
      end
      raw tr
    end
  end

  def get_head_tr(table, arr, ind)
    tag.tr do
      th = ''
      arr.each_with_index do |h, i|
        th += tag.th h, colspan: table.head.to_hash['spacing'][ind][i],
                        class: 'text-center'
      end
      raw th
    end
  end

  def get_body(table)
    tag.tbody do
      tr = ''
      table.body.to_hash['rows'].each_with_index do |arr, ind|
        tr += get_body_tr(table, arr, ind)
      end
      raw tr
    end
  end

  def get_body_tr(table, arr, ind)
    tag.tr do
      td = ''
      arr.each_with_index do |h, i|
        td += tag.td h, colspan: table.body.to_hash['spacing'].first[i],
                        class: 'text-center'
      end
      raw td
    end
  end

  def humanize_float(num)
    parts = num.to_r.to_s.split('/')
    return parts.first if parts.last == '1'
    return first_gt_last(parts) if parts.first.to_i > parts.last.to_i
    "#{parts.first}/#{parts.last}"
  end

  def first_gt_last(parts)
    "#{get_number(parts)} #{get_ration(parts)}"
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
