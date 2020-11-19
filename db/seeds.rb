# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

30.times do
    department.item.create(name: Faker::FunnyName.name_with_initial, price: Faker::Currency.symbol, Faker::Number.decimal  , body: Faker::Marketing.buzzwords )
  end
end