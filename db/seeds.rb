require 'faker'

User.delete_all
Movie.delete_all
List.delete_all
List_Movie.delete_all

users = 10.times.map do
  User.create!( :first_name => Faker::Name.first_name,
                :last_name  => Faker::Name.last_name,
                :username => Faker::Internet.user_name,
                :email      => Faker::Internet.email,
                :hashed_password   => 'password')
end


movies = 10.times.map do
  Movie.create!(:title => Faker::Name.title,
                :release_date => Faker::Time.forward(100, :morning))
end

lists = 10.times.map do
  List.create!( :title => Faker::Name.title,
                :description => Faker::Company.bs)
end

lists_movies = 10.times.map do
  List_Movie.create!( :user_id => rand(10) + 1,
                      :movie_id => rand(10) + 1,
                      :list_id => rand(10) + 1)
end
