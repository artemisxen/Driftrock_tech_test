class UsersCollection
  attr_reader :users

  def initialize
    @users = []
  end

  def add(user)
    users << user
  end

  def get_user_by_email(email)
    users.find { |user| user.email == email }
  end
end
