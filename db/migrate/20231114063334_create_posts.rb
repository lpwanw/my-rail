# frozen_string_literal: true

class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :summary, null: false
      t.string :link, null: false

      t.timestamps
    end
  end
end
