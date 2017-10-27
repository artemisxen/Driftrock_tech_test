require 'api_processor'

describe ApiProcessor do
  subject(:api_processor) { described_class.new }
  let(:data_storage) { double :data_storage }

  it 'starts with a new data_storage' do
    expect(api_processor.data_storage).to be_an(Object)
  end

end
