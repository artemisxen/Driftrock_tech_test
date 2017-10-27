require 'purchases_collection'

describe PurchasesCollection do
  subject(:purchases_collection) { described_class.new }
  let(:purchase1) { double :purchase, user_id: '1', item: '1', spend: 100}
  let(:purchase2) { double :purchase, user_id: '2', item: '1', spend: 300}
  let(:purchase3) { double :purchase, user_id: '1', item: '2', spend: 50}

  it 'starts with an empty array of purchases' do
    expect(purchases_collection.purchases).to be_empty
  end

  it 'adds a new purchase in purchases array' do
    expect(purchases_collection.add('Purchase')).to eq ['Purchase']
  end

  it 'finds the purchases for a user id' do
    purchases_collection.add(purchase1)
    purchases_collection.add(purchase2)
    purchases_collection.add(purchase3)
    expect(purchases_collection.get_purchases_by_user_id('1')).to eq [purchase1, purchase3]
  end
end
