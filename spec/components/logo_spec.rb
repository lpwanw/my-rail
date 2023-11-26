# frozen_string_literal: true

require "rails_helper"

RSpec.describe Logo, type: :component do
  subject { render_inline described_class.new }

  it { is_expected.to have_text("✦ TAY LE ✦ FULLSTACK RUBY ON RAILS") }
end
