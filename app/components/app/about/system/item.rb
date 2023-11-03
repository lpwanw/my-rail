# frozen_string_literal: true

class App::About::System::Item < ViewComponent::Base
  attr_reader :icon_class, :title, :description, :start_count, :icon_image

  def initialize(icon_class:, title:, icon_image: nil, description: "", start_count: 0)
    @icon_class = icon_class
    @title = title
    @description = description
    @start_count = start_count
    @icon_image = icon_image
    super
  end
end
