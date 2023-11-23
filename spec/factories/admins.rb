# frozen_string_literal: true

FactoryBot.define do
  factory :admin do
    username { FFaker::Internet.user_name }
    password { "Aa@123456" }
  end
end
