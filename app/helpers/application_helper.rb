module ApplicationHelper

  def nice_name(user)
    first = user.first_name
    last = user.last_name.chars.first
    "#{first} #{last}"
  end

end
