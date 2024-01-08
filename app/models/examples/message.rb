# frozen_string_literal: true

class Examples::Message < ApplicationRecord
  belongs_to :room

  validates :content, presence: true
end
