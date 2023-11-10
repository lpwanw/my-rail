# frozen_string_literal: true

class Examples::Movie
  include ActiveModel::API

  attr_accessor :title, :rating, :image_url

  def initialize(attributes = {})
    @title = attributes[:title]
    @rating = attributes[:rating]
    @image_url = attributes[:image_url]
    super()
  end
end
