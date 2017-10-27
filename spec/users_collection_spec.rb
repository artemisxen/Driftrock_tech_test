require 'users_collection'

describe UsersCollection do
  subject(:users_collection) { described_class.new }

  it 'starts with an empty array of users' do
    expect(users_collection.users).to be_empty
  end
end
