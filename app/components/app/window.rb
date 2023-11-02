# frozen_string_literal: true

class App::Window < ViewComponent::Base
  renders_one :body

  def initialize(id: nil)
    @id = id
    super
  end
end
