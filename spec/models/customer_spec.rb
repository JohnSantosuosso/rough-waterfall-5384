require 'rails_helper'

RSpec.describe Customer, type: :model do
  describe 'relationships' do
    it { should belong_to(:supermarket) }
    it { should have_many(:customer_items) }
    it { should have_many(:items).through(:customer_items) }
  end

  describe 'items_total_price' do
    it 'should return the total price of all items' do
      supermarket = Supermarket.create(name: 'Walmart', location: '123 Main St')
      customer = Customer.create(name: 'John', supermarket_id: supermarket.id)
      item1 = Item.create(name: 'Milk', price: 2)
      item2 = Item.create(name: 'Eggs', price: 3)
      customer_item1 = CustomerItem.create(customer_id: customer.id, item_id: item1.id)
      customer_item2 = CustomerItem.create(customer_id: customer.id, item_id: item2.id)
      expect(customer.items_total_price).to eq(5)
    end
  end
end

