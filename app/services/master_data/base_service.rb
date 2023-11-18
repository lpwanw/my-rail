# frozen_string_literal: true

# rubocop:disable Rails/Output
class MasterData::BaseService
  MASTER_DATA_FILE_NAME = ""
  MASTER_DATA_MODEL_NAME = ""

  def initialize
    @master_data = YAML.load_file(Rails.root.join("db/master_data/#{self.class::MASTER_DATA_FILE_NAME}"))
                       .map(&:deep_symbolize_keys)
    @master_data_ids = @master_data.pluck(:id)
  end

  def perform
    import
  rescue StandardError => e
    puts "\n Error Backtrace:"
    puts "\n #{e.backtrace}"
  end

  private

  attr_reader :master_data, :master_data_ids

  def import
    puts "\n Start Import #{MASTER_DATA_MODEL_NAME} \n"
    ActiveRecord::Base.transaction do
      create_or_update
      destroy
    end
    puts "\n Finish Import #{MASTER_DATA_MODEL_NAME} \n"
  end

  def create_or_update
    master_data.each do |data|
      id = data[:id]
      attributes = data.except(:id)
      record = self.class::MASTER_DATA_MODEL_NAME.find_or_initialize_by(id:)
      record.update!(attributes)
    end
  end

  def destroy
    self.class::MASTER_DATA_MODEL_NAME.where.not(id: master_data_ids).destroy_all
  end
end
# rubocop:enable Rails/Output
