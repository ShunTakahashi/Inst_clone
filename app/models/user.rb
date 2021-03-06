class User < ApplicationRecord
  has_many :blogs
  has_many :favorites, dependent: :destroy
  has_many :favorite_blogs, through: :favorites, source: :blog

  validates :name,  presence: true, length: { maximum: 30 }
  before_validation { email.downcase! }
  validates :email, presence: true, length: { maximum: 255 },
            format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
            uniqueness: true , on: :create

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, on: :create

  mount_uploader :user_image, ImageUploader
  attr_accessor :image_cache

end
