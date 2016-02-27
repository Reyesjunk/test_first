def add(num1, num2)
  num1 + num2
end
def subtract(num1, num2)
  num1 - num2
end
def sum(numbers)
  numbers.inject(0) {|sum, x| sum + x}
end
def multiply(*numbers)
  numbers.inject {|product, num| product*num}
end
def power(number, pow)
  array = []
  pow.times do |i|
    array<<number 
  end
  array.inject{|product, num| product*num}
end
def factorial(number)
  if number == 0 
    return 1 end
  (1..number).inject {|product, num| product*num}
end