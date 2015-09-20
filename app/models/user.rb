class User < ActiveRecord::Base
  has_many :lists_movies
end
