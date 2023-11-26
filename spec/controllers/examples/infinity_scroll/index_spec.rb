# frozen_string_literal: true

require "rails_helper"

RSpec.describe Examples::InfinityScrollController do
  describe "Get index" do
    subject { get :index }

    before { subject }

    it { expect(response).to have_http_status(:ok) }
    it { expect(response).to render_template(:index) }
    it { expect(assigns(:items).count).to eq 10 }
    it { expect(assigns(:items).first).to be_a Examples::Movie }
  end
end
