class Micropost < ApplicationRecord
  validates :content, presence: true, length: { maximum: 255 }
  
  #関係
  belongs_to :user
  #お気に入り機能
  has_many :favorite
  has_many :favoriting_user, through: :favorites, source: :user
end
