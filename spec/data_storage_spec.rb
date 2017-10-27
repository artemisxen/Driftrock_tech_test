require 'data_storage'

describe DataStorage do
  subject(:data_storage) { described_class.new }

  it 'starts with a new user_collection' do
    expect(data_storage.users_collection).to be_an(Object)
  end

  it 'starts with a new purchases_collection' do
    expect(data_storage.purchases_collection).to be_an(Object)
  end
end
