# frozen_string_literal: true

class ApplicationController < ActionController::Base
  private

  def after_sign_in_path_for(resource)
    case resource.class.name
    when "Admin"
      admins_path
    else
      root_path
    end
  end

  def after_sign_out_path_for(resource_or_scope)
    case resource_or_scope
    when :admin
      new_admin_session_path
    else
      root_path
    end
  end
end
