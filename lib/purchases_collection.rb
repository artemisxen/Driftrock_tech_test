class PurchasesCollection
  attr_reader :purchases

  def initialize
    @purchases = []
  end

  def add(purchase)
    @purchases << purchase
  end
end
