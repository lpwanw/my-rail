# frozen_string_literal: true

class Post < ApplicationRecord
  validates :title, presence: true
  validates :title, length: { maximum: 255 }

  validates :summary, presence: true

  validates :link, presence: true
  validates :link, length: { maximum: 255 }

  scope :newest, -> { order(created_at: :desc) }
end
