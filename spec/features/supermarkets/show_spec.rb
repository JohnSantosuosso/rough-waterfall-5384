require 'rails_helper'

RSpec.describe 'Supermarket Show Page' do
  it 'has a link to the items index page' do
    supermarket = Supermarket.create(name: 'Walmart', location: '123 Main St')
    customer = Customer.create(name: 'John', supermarket_id: supermarket.id)
    item1 = Item.create(name: 'Milk', price: 2)
    item2 = Item.create(name: 'Eggs', price: 3)
    customer_item1 = CustomerItem.create(customer_id: customer.id, item_id: item1.id)
    customer_item2 = CustomerItem.create(customer_id: customer.id, item_id: item2.id)
    
    visit "/supermarkets/#{supermarket.id}"

    expect(page).to have_link('View Items')

    click_on 'View Items'

    expect(current_path).to eq("/supermarkets/#{supermarket.id}/items")

  end
end
