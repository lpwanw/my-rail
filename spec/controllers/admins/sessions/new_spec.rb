# frozen_string_literal: true

require "rails_helper"

RSpec.describe Admins::SessionsController do
  describe "Get index" do
    subject { get :new }

    before do
      request.env["devise.mapping"] = Devise.mappings[:admin]
      subject
    end

    it { expect(response).to have_http_status(:ok) }
    it { expect(response).to render_template(:new) }
  end
end
