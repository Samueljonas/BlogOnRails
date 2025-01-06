# frozen_string_literal: true

class FixUserIdOnComments < ActiveRecord::Migration[6.0]
  def change
    # Adicionar a chave estrangeira manualmente, caso não exista
    add_foreign_key :comments, :users unless foreign_key_exists?(:comments, :users)

    # Adicionar índice à coluna `user_id`, caso ainda não exista
    add_index :comments, :user_id unless index_exists?(:comments, :user_id)
  end
end
