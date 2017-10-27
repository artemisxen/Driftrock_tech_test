require 'api_processor'

describe ApiProcessor do
  subject(:api_processor) { described_class.new(data_storage)}
  let(:data_storage) { double :data_storage, users_collection: users_collection, purchases_collection: purchases_collection }
  let(:user1) { double :user, email: 'user@user.com', id: '1'}
  let(:purchase1) { double :purchase, user_id: '1', item: 'item1', spend: '100'}
  let(:users_collection) { double :users_collection, add: user1}
  let(:purchases_collection) { double :purchases_collection, add: purchase1}

  context '#initialize' do
    it 'starts with a new data_storage' do
      expect(api_processor.data_storage).to be_an(Object)
    end
  end

  context '#get_data' do
    it 'returns the stored data' do
      expect(api_processor.get_data).to eq data_storage
    end
  end
end
