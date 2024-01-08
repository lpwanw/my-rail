# frozen_string_literal: true

class Examples::Room < ApplicationRecord
  has_many :messages, class_name: "Examples::Message", dependent: :delete_all

  validates :name, presence: true
  validates :name, length: { maximum: 255 }
  validates :name, uniqueness: true
end
