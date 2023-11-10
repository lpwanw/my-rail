# frozen_string_literal: true

class Examples::InfinityScrollController < ApplicationController
  before_action :generate_movie_items, only: %i[index]

  def index
    respond_to do |format|
      format.html
      format.turbo_stream
    end
  end

  private

  def generate_movie_items
    items_per_page = params[:items]&.to_i || 10

    @items = Array.new(items_per_page) do
      title = FFaker::Movie.title
      rating = FFaker::Movie.rating
      image_url = FFaker::Image.url(size: "300x300", text: title.split[..1].join)

      Examples::Movie.new({ title:, rating:, image_url: })
    end
  end
end
