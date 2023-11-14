# frozen_string_literal: true

require "rails_helper"

RSpec.describe MasterData::ImportPostService do
  let(:service) { described_class.new }

  describe "#perform" do
    subject { service.perform }

    it { expect { subject }.to change(Post, :count).by(2) }

    context "when raise error" do
      before { allow(service).to receive(:import).and_raise(StandardError) }

      it { expect { subject }.not_to change(Post, :count) }
    end
  end

  # private

  describe "#master_data" do
    subject { service.send(:master_data) }

    let(:master_data) do
      [
        {
          id: 1,
          title: "Infinity Scroll With no writing JS",
          summary: "Rails 7 with Hotwire create Infinity Scroll paging with no writing JS code",
          link: "/examples/infinity_scroll"
        },
        {
          id: 2,
          title: "SortTable in rails, live update with Hotwire",
          summary: "Rails 7 live update with no refresh page. Inline update",
          link: "/examples/sortable"
        }
      ]
    end

    it { is_expected.to eq master_data }
  end

  describe "#master_data_ids" do
    subject { service.send(:master_data_ids) }

    it { is_expected.to eq [1, 2] }
  end

  describe "#import" do
    subject { service.send(:import) }

    let!(:old_post) { create :post, id: 3 }

    before { subject }

    it { expect(Post.ids).to eq [1, 2] }
    it { expect(Post.exists?(old_post.id)).to be false }
  end
end
