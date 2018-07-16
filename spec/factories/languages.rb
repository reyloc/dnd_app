# frozen_string_literal: true

FactoryBot.define do
  factory :language do
    name 'Test Language'
    description 'Description for Test Language'
    selector 'test-lang'
    source_file 'Common.ttf'
    file_format 'truetype'
    font_size 12
    is_public false
    user_id User.first.id
  end
end
