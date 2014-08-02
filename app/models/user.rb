class User < ActiveRecord::Base
  has_many :statuses

  validates :username, uniqueness: true, length: {minimum: 5}
  validates :email, uniqueness: true

  has_secure_password

end