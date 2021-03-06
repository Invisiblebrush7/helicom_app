Material.create(category: 'Category1', description: 'Description1', catalog_number: '#1')
Material.create(category: 'Category2', description: 'Description2', catalog_number: '#2')
Material.create(category: 'Category3', description: 'Description3', catalog_number: '#3')
Material.create(category: 'Category4', description: 'Description4', catalog_number: '#4')


User.create(email: 'test1@test.com', password: 'password')
User.create(email: 'test2@test.com', password: 'password')
User.create(email: 'test3@test.com', password: 'password')


Inventory.create(user: User.first, material: Material.first, stock: 10)
Inventory.create(user: User.second, material: Material.second, stock: 20)
Inventory.create(user: User.third, material: Material.third, stock: 30)


MaterialRequest.create(requested_date: Date.today, status: 'Status1', who_authorized: User.first, who_requested: User.second, material: Material.first)
