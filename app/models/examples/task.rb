# frozen_string_literal: true

class Examples::Task < ApplicationRecord
  enum status: {
    initialized: "initialized",
    in_progress: "in_progress",
    pending: "pending",
    completed: "completed"
  }
  validates :status, presence: true

  validates :name, presence: true
  validates :name, length: { maximum: 255 }

  validates :description, presence: true
  validates :description, length: { maximum: 255 }
end
