# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

5000.times do |_t|
  Product.create(
    kind: 'mobile',
    model: Faker::Device.model_name,
    brand: Faker::Device.manufacturer,
    name: Faker::App.name,
    year: Faker::Date.between(from: 20.years.ago, to: Date.today),
    RAM: Faker::Number.within(range: 1..32),
    external_storage: Faker::Number.within(range: 8..512)
  )
end
