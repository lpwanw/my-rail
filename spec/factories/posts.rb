# frozen_string_literal: true

FactoryBot.define do
  factory :post do
    title { FFaker::Lorem.word }
    summary { FFaker::Lorem.paragraph }
    link { FFaker::Internet.http_url }
  end
end
