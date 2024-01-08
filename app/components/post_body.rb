# frozen_string_literal: true

class PostBody < ViewComponent::Base
  attr_reader :body

  def initialize(body)
    @body = JSON.parse(body).with_indifferent_access
    super()
  end

  private

  def render_block(block)
    case block[:type]
    when "code"
      render Code.new block[:data]
    else
      ""
    end
  end
end
