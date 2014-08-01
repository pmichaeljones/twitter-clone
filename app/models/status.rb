class Status < ActiveRecord::Base
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'

  validates :creator, presence: true
  validates :body, presence: true, length: { minimum: 5}
end
