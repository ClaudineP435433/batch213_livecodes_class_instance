class Citizen
  attr_reader :age
  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def can_vote?
    # condition ? action si true : action si false
    # @age >= 18 ? true : false

    if @age >= 18
      return true
    else
      return false
    end
  end

  def fullname
    "#{first_name} #{last_name}"
  end

end
