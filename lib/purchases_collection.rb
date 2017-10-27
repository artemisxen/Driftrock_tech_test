class PurchasesCollection
  attr_reader :purchases

  def initialize
    @purchases = []
  end

  def add(purchase)
    purchases << purchase
  end

  def get_purchases_by_user_id(user_id)
    purchases.select { |purchase| purchase.user_id == user_id }
  end
end
