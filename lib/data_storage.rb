class DataStorage
  attr_reader :users_collection, :purchases_collection

  def initialize
    @users_collection = UsersCollection.new
    @purchases_collection = PurchasesCollection.new
  end
end
