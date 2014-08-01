class User < ActiveRecord::Base
  has_many :statuses

  validates :username, uniqueness: true

  has_secure_password

end