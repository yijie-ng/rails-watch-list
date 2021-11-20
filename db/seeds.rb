# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

url = 'http://tmdb.lewagon.com/movie/top_rated'
movie_json = JSON.parse(URI.open(url).read)
results = movie_json['results']

puts 'cleaning up database...'
Movie.destroy_all
puts 'Database is clean!'
puts 'Creating database...'
results.each do |result|
  movie = Movie.create!(
    title: result['original_title'],
    overview: result['overview'],
    poster_url: "https://image.tmdb.org/t/p/w500#{result['poster_path']}",
    rating: result['vote_average']
  )
  puts "Movie #{movie.id} is created!"
end

puts 'Done!'
