# frozen_string_literal: true

require "rails_helper"

RSpec.describe Admins::SessionsController do
  describe "Get index" do
    subject { delete :destroy }

    let(:admin) { create :admin }

    before do
      request.env["devise.mapping"] = Devise.mappings[:admin]
      sign_in admin
      subject
    end

    it { expect(response).to have_http_status(:see_other) }
    it { expect(response).to redirect_to(new_admin_session_path) }
  end
end
