# frozen_string_literal: true

require "rails_helper"

RSpec.describe Admins::SessionsController do
  describe "Get index" do
    subject { post :create, params: }

    let(:params) do
      {
        admin: {
          username: admin.username,
          password: "Aa@123456"
        }
      }
    end
    let(:admin) { create :admin }

    before do
      request.env["devise.mapping"] = Devise.mappings[:admin]
      subject
    end

    it { expect(response).to have_http_status(:see_other) }
    it { expect(response).to redirect_to(admins_path) }
  end
end
