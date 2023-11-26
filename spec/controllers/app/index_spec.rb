# frozen_string_literal: true

require "rails_helper"

RSpec.describe AppController do
  describe "Get index" do
    subject { get :index }

    before { subject }

    it { expect(response).to have_http_status(:ok) }
    it { expect(response).to render_template(:index) }
  end
end
