class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }
 
  has_many :likes
  has_many :favorites, through: :likes, source: :favorite
  has_many :reverses_of_like, class_name: 'Like', foreign_key: 'favorite_id'
  has_many :favorites, through: :reverses_of_like, source: :user
 
end
