# frozen_string_literal: true

class Examples::RoomsController < ApplicationController
  def index
    @room = Examples::Room.find_or_create_by(name: "general")
  end
end
