# frozen_string_literal: true

require "rails_helper"

RSpec.describe App::Window, type: :component do
  subject { render_inline described_class.new title: "Some Title" }

  it { is_expected.to have_text("Some Title") }
end
