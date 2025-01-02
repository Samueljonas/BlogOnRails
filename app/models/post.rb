class Post < ApplicationRecord
  belongs_to :user
  validates :title, :author, :body, presence:true, length:{maximum: 100}
  validates :body, presence:true
  has_many:Comments, dependent: :destroy

end
