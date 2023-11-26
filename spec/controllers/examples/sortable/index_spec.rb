# frozen_string_literal: true

require "rails_helper"

RSpec.describe Examples::SortableController do
  describe "Get index" do
    subject { get :index }

    let(:tasks) { create_list :examples_task, 20 }
    let(:task_by_status) do
      {
        "initialized" => Examples::Task.initialized,
        "in_progress" => Examples::Task.in_progress,
        "pending" => Examples::Task.pending,
        "completed" => Examples::Task.completed
      }
    end

    before { subject }

    it { expect(response).to have_http_status(:ok) }
    it { expect(assigns(:task_by_status)).to eq task_by_status }
    it { expect(response).to render_template(:index) }
  end
end
