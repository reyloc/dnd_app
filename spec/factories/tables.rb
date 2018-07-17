# frozen_string_literal: true

FactoryBot.define do
  factory :table do
    caption 'Test Caption'
    head JSON.parse({ headers:[['A','Test','Header']],spacing: [[1,1,1]] }.to_json)
    body JSON.parse({ rows:[['A','Test','Row']],spacing:[[1,1,1]] }.to_json)
  end
end
