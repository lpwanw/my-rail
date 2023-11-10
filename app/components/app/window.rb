# frozen_string_literal: true

class App::Window < ViewComponent::Base
  renders_one :body

  def initialize(id: nil, title: nil, icon: "icons/setting.svg", js_controller: nil)
    @id = id
    @title = title
    @icon = icon
    @js_controller = js_controller
    super
  end
end
