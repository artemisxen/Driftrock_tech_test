require 'users_collection'

describe UsersCollection do
  subject(:users_collection) { described_class.new }
  let(:user) { double :user, email: 'user@user.com'}

  it 'starts with an empty array of users' do
    expect(users_collection.users).to be_empty
  end

  it 'adds a new user in users array' do
    expect(users_collection.add('User')).to eq ['User']
  end

  it 'finds the user from the email' do
    users_collection.add(user)
    expect(users_collection.get_user_by_email('user@user.com')).to eq user
  end
end
