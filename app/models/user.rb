class User < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :username, :email, :hashed_password

  has_many :lists
end
