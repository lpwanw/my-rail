# frozen_string_literal: true

require "rails_helper"

RSpec.describe Examples::Task do
  describe "Validations" do
    it do
      is_expected.to define_enum_for(:status)
        .with_values({ initialized: :initialized, in_progress: :in_progress, pending: :pending, completed: :completed })
        .backed_by_column_of_type(:string)
    end

    it { is_expected.to validate_presence_of(:status) }

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_length_of(:name).is_at_most(255) }

    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_length_of(:description).is_at_most(255) }
  end
end
