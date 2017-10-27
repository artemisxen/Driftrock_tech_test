require 'uri'
require 'net/https'
require 'json'

class ApiProcessor
  attr_reader :data_storage

  def initialize(data_storage = DataStorage.new)
    @data_storage = data_storage
  end

  def get_data
    get_users(data_storage.users_collection)
    get_purchases(data_storage.purchases_collection)
    data_storage
  end

  private

  USER_URL = 'https://driftrock-dev-test-2.herokuapp.com/users'
  PURCHASE_URL = 'https://driftrock-dev-test-2.herokuapp.com/purchases'
  PAGE_SIZE = 10000
  
  def get_users(users_collection)
    page = 1
    data = request_data(USER_URL, PAGE_SIZE, page)
    until data.length != PAGE_SIZE do
      data.each do |user|
        new_user = User.new(user['id'], user['first_name'], user['last_name'],
                            user['phone'], user['email'])
        users_collection.add(new_user)
      end
      page += 1
      data = request_data(USER_URL, PAGE_SIZE, page)
    end
  end

  def get_purchases(purchases_collection)
    page = 1
    data = request_data(PURCHASE_URL, PAGE_SIZE, page)
    until data.length != PAGE_SIZE do
      data.each do |purchase|
        purchase = Purchase.new(purchase['user_id'], purchase['item'],
                                purchase['spend'])
        purchases_collection.add(purchase)
      end
      page += 1
      data = request_data(PURCHASE_URL, PAGE_SIZE, page)
    end
  end

  def request_data(url, results, page)
    url = URI("#{url}?per_page=#{results}&page=#{page}")
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    request = Net::HTTP::Get.new(url)
    response = http.request(request)
    @data = JSON.parse(response.body)['data']
  end
end
