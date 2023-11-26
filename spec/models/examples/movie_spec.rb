# frozen_string_literal: true

require "rails_helper"

RSpec.describe Examples::Movie do
  describe "Initialize" do
    subject { described_class.new attributes }

    let(:attributes) { { title:, rating:, image_url: } }
    let(:title) { FFaker::Movie.title }
    let(:rating) { FFaker::Movie.rating }
    let(:image_url) { FFaker::Internet.http_url }

    it { expect(subject.title).to eq title }
    it { expect(subject.rating).to eq rating }
    it { expect(subject.image_url).to eq image_url }
  end
end
