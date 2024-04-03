# frozen_string_literal: true

class PostBody::Code < ViewComponent::Base
  attr_reader :code, :language

  def initialize(data)
    @language = data[:code].scan(/##(.*?)##/).flatten.first
    @code = data[:code].gsub(/##(.*?)##/, "").strip
    super
  end
end
