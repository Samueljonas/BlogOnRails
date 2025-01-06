# frozen_string_literal: true

class AddNameAndAdminToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :name, :string
    add_column :users, :admin, :boolean
  end
end
