class Movie < ActiveRecord::Base
  has_many :lists_movies
  has_many :lists, through: :lists_movies
end
