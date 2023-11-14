# frozen_string_literal: true

namespace :master_data do
  desc "Import post"

  task import_post: :environment do
    MasterData::ImportPostService.new.perform
  end
end
