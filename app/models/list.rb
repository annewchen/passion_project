class List < ActiveRecord::Base
  validates_presence_of :title, :description, :user_id
  has_many :movies
  belongs_to :user
end
