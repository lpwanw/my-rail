# frozen_string_literal: true

class App::Window < ViewComponent::Base
  def initialize(id: nil)
    @id = id
    super
  end
end
