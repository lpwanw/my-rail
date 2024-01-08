# frozen_string_literal: true

class AddBodyToPost < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :body, :text
  end
end
