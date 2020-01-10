def get_name(person)
  return person[:name]
end


def get_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  if person[:favourites][:snacks].include?(food)
    return true
  else
    return false
  end
end

def add_friend(person, new_friend)
  old_friend = person[:friends].length
  person[:friends].push(new_friend)
  new_friend = person[:friends].length
  return new_friend - old_friend
end

def remove_friend(person, new_friend)
  old_friend = person[:friends].length
  person[:friends].delete(new_friend)
  new_friend = person[:friends].length
  return new_friend - old_friend
end

def total_monies(array)
  total = 0
  for person in array
    total = total + person[:monies]
  end
  return total
end


def money_lending(lender, lendee, trans_value)

  lendee_balance = lendee[:monies] + trans_value
  lender_balance = lender[:monies] - trans_value
  output = Array.new()
  output.push(lender_balance,lendee_balance,trans_value)

  return output

end

def all_snacks(array)
  all_snacks_array = Array.new()

  for person in array
    all_snacks_array.concat(person[:favourites][:snacks])
  end

  return all_snacks_array
end


def no_friends(array)
  no_friends_array = Array.new()
  for person in array
  if person .length==0
    no_friends_array.concat(person)
  end

  return no_friends_array
end
end
