class User < ActiveRecord::Base

  validates :username, :email, presence: true
  validates :username, uniqueness: true
  has_secure_password

  has_many :products
  has_many :reivews
end