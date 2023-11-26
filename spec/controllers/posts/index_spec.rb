# frozen_string_literal: true

require "rails_helper"

RSpec.describe PostsController do
  describe "Get Index" do
    subject { get :index }

    let(:posts) { create_list :post, 2 }

    before { subject }

    it { expect(response).to have_http_status(:ok) }
    it { expect(response).to render_template(:index) }
    it { expect(assigns(:posts)).to eq posts }
  end
end
