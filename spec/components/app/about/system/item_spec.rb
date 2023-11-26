# frozen_string_literal: true

require "rails_helper"

RSpec.describe App::About::System::Item, type: :component do
  subject { render_inline described_class.new icon_class: "icon_class", title: "Some Title" }

  it { is_expected.to have_text("Some Title") }
  it { is_expected.to have_css(".icon_class") }
end
