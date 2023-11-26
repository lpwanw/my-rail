# frozen_string_literal: true

require "rails_helper"

RSpec.describe App::TaskBar, type: :component do
  subject { render_inline described_class.new }

  it { is_expected.to have_text("Setting") }
  it { is_expected.to have_text("About Me") }
end
