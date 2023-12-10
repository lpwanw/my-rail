# frozen_string_literal: true

class PostBody::Code < ViewComponent::Base
  attr_reader :code

  def initialize(data)
    @code = data[:code]
    super
  end
end
