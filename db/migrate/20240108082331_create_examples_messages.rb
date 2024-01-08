# frozen_string_literal: true

class CreateExamplesMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :examples_messages do |t|
      t.references :room, null: false, foreign_key: { to_table: :examples_rooms }
      t.text :content

      t.timestamps
    end
  end
end
