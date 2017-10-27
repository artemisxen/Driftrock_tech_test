require_relative 'users_collection'
require_relative 'purchases_collection'

class DataStorage
  attr_reader :users_collection, :purchases_collection

  def initialize
    @users_collection = UsersCollection.new
    @purchases_collection = PurchasesCollection.new
  end
end
