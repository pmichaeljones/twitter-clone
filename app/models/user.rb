class User < ActiveRecord::Base
  has_secure_password

  has_many :statuses

  has_many :relationships

  has_many :follower_users, through: :relationships, source: :leader
  has_many :following_users, through: :relationships, source: :follower

  validates :username, uniqueness: true, length: {minimum: 5}
  validates :email, uniqueness: true

end