# frozen_string_literal: true

FactoryBot.define do
  factory :examples_task, class: "Examples::Task" do
    name { FFaker::Company.name }
    description { FFaker::Lorem.sentences.join(" ") }
    status { Examples::Task.statuses.keys.sample }
  end
end
