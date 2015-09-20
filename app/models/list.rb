class List < ActiveRecord::Base
  has_many :lists_movies
  has_many :movies, through: :lists_movies
end
