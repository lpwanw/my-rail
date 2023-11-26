# frozen_string_literal: true

require "rails_helper"

RSpec.describe Examples::TasksController do
  describe "Post update" do
    subject { post :update, params: { id: task.id, examples_task: } }

    let!(:task) { create :examples_task }
    let(:examples_task) do
      {
        name: "name"
      }
    end

    before { subject }

    it { expect(response).to have_http_status(:no_content) }
    it { expect(assigns(:task)).to eq task }
    it { expect(task.reload.name).to eq "name" }
  end
end
