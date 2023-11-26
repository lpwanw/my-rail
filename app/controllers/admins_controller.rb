# frozen_string_literal: true

class AdminsController < ApplicationController
  layout "admins"

  before_action :authenticate_admin!

  def index; end
end
