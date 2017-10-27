class Purchase
  attr_reader :user_id, :item, :spend

  def initialize(user_id, item, spend)
    @user_id = user_id
    @item = item
    @spend = spend
  end
end
