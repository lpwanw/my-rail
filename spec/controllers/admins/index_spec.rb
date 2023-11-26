# frozen_string_literal: true

require "rails_helper"

RSpec.describe AdminsController do
  describe "Get index" do
    subject { get :index }

    context "when sign_in" do
      let(:admin) { create :admin }

      before do
        sign_in admin
        subject
      end

      it { expect(response).to have_http_status(:ok) }
      it { expect(response).to render_template(:index) }
    end

    context "when not sign_in" do
      before do
        subject
      end

      it { expect(response).to have_http_status(:redirect) }
      it { expect(response).to redirect_to(new_admin_session_path) }
    end
  end
end
