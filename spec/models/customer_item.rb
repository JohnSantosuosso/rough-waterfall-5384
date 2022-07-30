require 'rails_helper'

RSpec.describe CustomerItem, type: :model do
  describe 'relationships' do
    it { should belong_to(:items) }
    it { should belong_to(:customer) }
  end
end

