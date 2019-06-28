class User < ApplicationRecord
  has_many :blogs
  has_many :favorites, dependent: :destroy
end
