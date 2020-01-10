def fizz_buzz(number)
  #content go here
  #content go here
  #content go here
  #content go here
  #content go here
  if (number % 3 == 0 && number % 5 == 0)
    return "FizzBuzz"
  elsif (number % 3 == 0)
    return "Fizz"
  elsif (number % 5 == 0)
    return "Buzz"
  else
    return number.to_s()

  end

# arrange
# range_of_non_fizz_buzz_values[1,2,7,11,13]

end
