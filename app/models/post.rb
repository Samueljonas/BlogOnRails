class Post < ApplicationRecord
  belongs_to :user, optional: true
  validates :title, :body, presence:true, length:{maximum: 100}
  validates :body, presence:true
  has_many :Comments, dependent: :destroy

end
