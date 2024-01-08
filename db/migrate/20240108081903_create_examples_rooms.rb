# frozen_string_literal: true

class CreateExamplesRooms < ActiveRecord::Migration[7.1]
  def change
    create_table :examples_rooms do |t|
      t.string :name, null: false, index: { unique: true }

      t.timestamps
    end
  end
end
