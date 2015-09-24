require 'faker'
require 'date'

User.delete_all
Movie.delete_all
List.delete_all

users = 10.times.map do
  User.create!( :first_name => Faker::Name.first_name,
                :last_name  => Faker::Name.last_name,
                :username => Faker::Internet.user_name,
                :email      => Faker::Internet.email,
                :hashed_password   => 'password')
end


movies = 100.times.map do
  Movie.create!(:title => Faker::Name.title,
                :release_date => Date.today + rand(100),
                :list_id => rand(10) + 1)
end

lists = 40.times.map do
  List.create!( :title => Faker::Name.title,
                :description => Faker::Company.bs,
                :user_id => rand(10) + 1)
end


