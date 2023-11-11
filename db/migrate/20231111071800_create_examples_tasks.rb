# frozen_string_literal: true

class CreateExamplesTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :examples_tasks do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.string :status, null: false

      t.timestamps
    end
  end
end
