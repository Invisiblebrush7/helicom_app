# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Material.create(category: 'Category1', description: 'Description1', catalog_number: '#1')
Material.create(category: 'Category2', description: 'Description2', catalog_number: '#2')
Material.create(category: 'Category3', description: 'Description3', catalog_number: '#3')
Material.create(category: 'Category4', description: 'Description4', catalog_number: '#4')


User.create(email: 'test1@test.com', password: 'password')
User.create(email: 'test2@test.com', password: 'password')
User.create(email: 'test3@test.com', password: 'password')


Inventory.create(user: User.first, material: Material.first, stock: 10)
