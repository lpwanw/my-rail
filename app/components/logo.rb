# frozen_string_literal: true

class Logo < ViewComponent::Base
  attr_reader :class_name

  def initialize(class_name: "")
    @class_name = class_name
    super()
  end
end
