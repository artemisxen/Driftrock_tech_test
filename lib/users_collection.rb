class UsersCollection
  attr_reader :users

  def initialize
    @users = []
  end

  def add(user)
    @users << user
  end
end
