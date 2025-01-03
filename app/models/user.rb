class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments
  validates :name, presence: true, length:{maximum: 50}
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
