# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

i = 1
20.times do |element|
	items = Item.create(
		title: "Pic n°#{i}: " + Faker::Pokemon.name,
		description:Faker::MostInterestingManInTheWorld.quote,
		price:Faker::Number.decimal(2, 2)
		)
	i += 1
end
