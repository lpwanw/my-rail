# frozen_string_literal: true

require "rails_helper"

RSpec.describe Examples::TasksController, type: :request do
  describe "Get edit" do
    let(:task) { create :examples_task }

    context "when not turbo_frame_request" do
      subject { get "/examples/tasks/#{task.id}/edit" }

      before { subject }

      it { expect(response).to have_http_status(:redirect) }
      it { expect(response).to redirect_to(examples_sortable_index_path) }
      it { expect(assigns(:task)).to eq task }
    end

    context "when turbo_frame_request" do
      subject do
        get "/examples/tasks/#{task.id}/edit",
            params: { attribute: },
            headers: { "Turbo-Frame": attribute }
      end

      let(:attribute) { "name" }

      before do
        subject
      end

      it { expect(response).to have_http_status(:ok) }
      it { expect(response).to render_template(:edit) }
      it { expect(assigns(:task)).to eq task }

      %w[description name status].each do |attribute|
        context "when render #{attribute}" do
          let(:attribute) { attribute }

          it { expect(response).to render_template(partial: "_inline_attribute_form") }
          it { expect(response).to render_template(partial: "_inline_#{attribute}_input") }
        end
      end
    end
  end
end
