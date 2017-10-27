require 'purchase'

describe Purchase do
  subject(:purchase) { described_class.new('ZG4M-5KKB-O1HH-JM0W', 'Synergistic Aluminum Shoes', '27.78') }

  it 'has a user id' do
    expect(purchase.user_id).to eq 'ZG4M-5KKB-O1HH-JM0W'
  end

  it 'has an item description' do
    expect(purchase.item).to eq 'Synergistic Aluminum Shoes'
  end

  it 'has an item price' do
    expect(purchase.spend).to eq '27.78'
  end
end
