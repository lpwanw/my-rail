# frozen_string_literal: true

require "rails_helper"

RSpec.describe Examples::TasksController do
  describe "Get show" do
    subject { get :show, params: { id: task.id } }

    let(:task) { create :examples_task }

    before { subject }

    it { expect(response).to have_http_status(:ok) }
    it { expect(response).to render_template(:show) }
    it { expect(assigns(:task)).to eq task }
  end
end
