# frozen_string_literal: true

require "rails_helper"

RSpec.describe DarkButton, type: :component do
  subject { render_inline described_class.new }

  it { is_expected.to have_css("i.fa-solid.fa-moon.absolute.invisible") }
  it { is_expected.to have_css("i.fa-regular.fa-sun.absolute") }
  it { is_expected.to have_button(class: "relative h-full w-full") }
end
