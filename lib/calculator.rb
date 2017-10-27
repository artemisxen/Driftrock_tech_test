require_relative 'user'
require_relative 'purchase'
require_relative 'users_collection'
require_relative 'purchases_collection'
require_relative 'api_processor'
require_relative 'data_storage'

class Calculator
  attr_reader :data, :api_processor, :users, :purchases

  def initialize(api_processor = ApiProcessor.new)
    @api_processor = api_processor
    @data = api_processor.get_data
    @users = data.users_collection
    @purchases = data.purchases_collection
  end

  def total_spend(email)
    user = @users.get_user_by_email(email)
    purchases = @purchases.get_purchases_by_user_id(user.id)
    sum = 0
    purchases.map { |purchase| sum += purchase.spend.to_f }
    sum
  end

  def average_spend(email)
    user = @users.get_user_by_email(email)
    purchases = @purchases.get_purchases_by_user_id(user.id)
    sum = 0
    purchases.map { |purchase| sum += purchase.spend.to_f }
    sum / purchases.length
  end

  def most_loyal
    users_purchases = []
    @users.users.map { |user| users_purchases << {user_id: user.id, email: user.email, purchases: @purchases.get_purchases_by_user_id(user.id).count}}
    users_purchases.max_by{ |k| k[:purchases]}[:email]
  end

  def highest_value
    users_total_spend = []
    @users.users.each { |user| users_total_spend << {email: user.email, spend: total_spend(user.email)}}
    users_total_spend.max_by{ |k| k[:spend]}[:email]
  end

  def most_sold
    items_purchases = @purchases.purchases.group_by { |purchase| purchase.item}.map{|k,v| [k, v.count]}
    items_purchases.max_by{|k,v| v}[0]
  end
end
