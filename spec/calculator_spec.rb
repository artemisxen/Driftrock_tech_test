require 'calculator'

describe Calculator do
  subject(:calculator) { described_class.new(api_processor) }
  let(:api_processor) { double :api_processor, get_data: data_storage }
  let(:data_storage) { double :data_storage, users_collection: users_collection, purchases_collection: purchases_collection }
  let(:users_collection) { double :users_collection, get_user_by_email: user1}
  let(:user1) { double :user, email: 'user@user.com', id: '1'}
  let(:purchases_collection) { double :purchases_collection, get_purchases_by_user_id: [purchase1, purchase2]}
  let(:purchase1) { double :purchase, id: '1', spend: '100'}
  let(:purchase2) { double :purchase, id: '1', spend: '150'}

  context '#initialize' do
    it 'starts with a new api_processor' do
      expect(calculator.api_processor).to be_an(Object)
    end

    it 'starts with the data from the api_processor' do
      expect(calculator.data).to eq api_processor.get_data
    end
  end

  context '#total_spend' do
    it 'returns the sum for an email address' do
      expect(calculator.total_spend('user@user.com')).to eq 250
    end
  end


end
