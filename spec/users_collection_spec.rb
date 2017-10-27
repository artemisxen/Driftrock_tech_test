require 'users_collection'

describe UsersCollection do
  subject(:users_collection) { described_class.new }

  it 'starts with an empty array of users' do
    expect(users_collection.users).to be_empty
  end

  it 'adds a new user in users array' do
    expect(users_collection.add('User')).to eq ['User']
  end
end
