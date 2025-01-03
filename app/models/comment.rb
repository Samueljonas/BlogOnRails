class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user, optional: true # Permite que o `user_id` seja nulo
  validates :body, presence: true # Garante que o corpo do comentário seja preenchido
end
