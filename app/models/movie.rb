class Movie < ActiveRecord::Base
  validates_presence_of :title, :release_date, :list_id

  belongs_to :list
end
