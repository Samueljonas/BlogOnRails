# frozen_string_literal: true

class AddFieldsToPosts < ActiveRecord::Migration[8.0]
  def change
    add_column :posts, :author, :string
    add_column :posts, :body, :text
  end
end
