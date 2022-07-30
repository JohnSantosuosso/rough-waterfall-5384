# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    supermarket_1 = Supermarket.create!(id: 1, name: 'Giant', location: "Denver")
    supermarket_2 = Supermarket.create!(id: 2, name: 'Safeway', location: "Tampa")
    
    customer_1 = Customer.create!(id: 1, name: 'John Doe', supermarket_id: supermarket_1.id)
    customer_2 = Customer.create!(id: 2, name: 'Jane Doe', supermarket_id: supermarket_1.id)
    
    item_1 = Item.create!(id: 1, name: 'Apple', price: 2)
    item_2 = Item.create!(id: 2, name: 'Pear', price: 3)
    item_3 = Item.create!(id: 3, name: "Bannana", price: 4)

    customer_item_1 = CustomerItem.create!(id: 1, customer_id: customer_1.id, item_id: item_1.id)
    customer_item_2 = CustomerItem.create!(id: 2, customer_id: customer_1.id, item_id: item_2.id)
    customer_item_3 = CustomerItem.create!(id: 3, customer_id: customer_1.id, item_id: item_3.id)
    customer_item_4 = CustomerItem.create!(id: 4, customer_id: customer_2.id, item_id: item_3.id)
    