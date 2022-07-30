require 'rails_helper'

RSpec.describe 'Customer Index Page' do
  it 'shows all customers and their items and the supermarket the customer is associated with' do
    supermarket_1 = Supermarket.create!(id: 1, name: 'Giant', location: "Denver")
    supermarket_2 = Supermarket.create!(id: 2, name: 'Safeway', location: "Tampa")
    
    customer_1 = Customer.create!(id: 1, name: 'John Doe', supermarket_id: supermarket_1.id)
    customer_2 = Customer.create!(id: 2, name: 'Jane Doe', supermarket_id: supermarket_1.id)
    
    item_1 = Item.create!(id: 1, name: 'Apple', price: 2)
    item_2 = Item.create!(id: 2, name: 'Pear', price: 3)
    item_3 = Item.create!(id: 3, name: "Bannana", price: 4)
    item_4 = Item.create!(id: 4, name: 'Raisins', price: 5)

    customer_item_1 = CustomerItem.create!(id: 1, customer_id: customer_1.id, item_id: item_1.id)
    customer_item_2 = CustomerItem.create!(id: 2, customer_id: customer_1.id, item_id: item_2.id)
    customer_item_3 = CustomerItem.create!(id: 3, customer_id: customer_1.id, item_id: item_3.id)
    customer_item_4 = CustomerItem.create!(id: 4, customer_id: customer_2.id, item_id: item_4.id)
    
    visit "/customers/#{customer_1.id}"

    expect(page).to have_content("John Doe")
    expect(page).to have_content("Apple")
    expect(page).to have_content("Pear")
    expect(page).to have_content("Bannana")
    expect(page).to have_content("Giant")
    expect(page).to have_no_content("Safeway")
    expect(page).to have_no_content("Jane Doe")
    expect(page).to have_no_content("Raisins")
  end
end


