class Player < ActiveRecord::Base
  has_many :characters
  has_many :stories
  has_secure_password

  validates :player_name, presence: true
end
