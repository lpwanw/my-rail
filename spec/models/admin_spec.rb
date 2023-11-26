# frozen_string_literal: true

require "rails_helper"

RSpec.describe Admin do
  describe "Custom Devise Methods" do
    let(:admin) { create :admin }

    %i[email_required? will_save_change_to_email? email_changed?].each do |method|
      describe "##{method}" do
        subject { admin.public_send(method) }

        it { is_expected.to be false }
      end
    end
  end
end
