require 'user'

describe User do
  subject(:user) { described_class.new('KZHR-1H35-2IH8-JXYN', 'Quincy', 'Schimmel', '186.301.6921 x948', 'schimmel_quincy@ernser.io') }

  it 'has a user id' do
    expect(user.id).to eq 'KZHR-1H35-2IH8-JXYN'
  end

  it 'has a first name' do
    expect(user.first_name).to eq 'Quincy'
  end

  it 'has a last name' do
    expect(user.last_name).to eq 'Schimmel'
  end

  it 'has a phone number' do
    expect(user.phone).to eq '186.301.6921 x948'
  end

  it 'has an email address' do
    expect(user.email).to eq 'schimmel_quincy@ernser.io'
  end
end
