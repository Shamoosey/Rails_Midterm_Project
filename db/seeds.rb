# frozen_string_literal: true

require 'csv'
require 'faker'

Customer.destroy_all
Beer.destroy_all
Brewery.destroy_all

breweries = File.read('breweries.csv')
beers = File.read('beers.csv')

csvBreweries = CSV.parse(breweries, headers: true)
csvBeers = CSV.parse(beers, headers: true)

NUMBER_OF_CUSTOMERS = 150

csvBreweries.each do |brewery|
  Brewery.create(
    name: brewery['name'],
    address: Faker::Address.street_address,
    city: brewery['city'],
    country: 'United States',
    state: brewery['state']
  )
end

csvBeers.each do |beer|
  Beer.create(
    name: beer['name'],
    ibu: beer['ibu'],
    abv: beer['abv'],
    category: beer['style'],
    brewery_id: beer['brewery_id']
  )
end

NUMBER_OF_CUSTOMERS.times do
  name = Faker::Name.name
  Customer.create(
    name: name,
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state,
    country: 'United States',
    email: Faker::Internet.email(name: name, separators: '_'),
    beer_id: rand(1..Beer.count)
  )
end

puts "Created #{Brewery.count} breweries"
puts "Created #{Beer.count} beer"
puts "Created #{Customer.count} customers"
