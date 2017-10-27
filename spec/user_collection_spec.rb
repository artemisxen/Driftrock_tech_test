require 'user_collection'

describe UserCollection do
  subject(:user_collection) { described_class.new }

  it 'starts with an empty array of users' do
    expect(user_collection.users).to be_empty
  end
end
