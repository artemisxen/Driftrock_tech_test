class User
  attr_reader :id, :first_name, :last_name, :phone, :email

  def initialize(id, first_name, last_name, phone, email)
    @id = id
    @first_name = first_name
    @last_name = last_name
    @phone = phone
    @email = email
  end
end
