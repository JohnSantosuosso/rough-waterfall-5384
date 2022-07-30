require 'rails_helper'

RSpec.describe Item, type: :model do
  describe 'relationships' do
    it { should have_many(:customer_items) }
    it { should have_many(:items).through(:customer_items)}
    
  end
end

