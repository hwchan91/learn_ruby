#write your code here
def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum (array)
  sum_of_array = 0
  array.each do |value|
    sum_of_array += value
  end
  sum_of_array
end

def multiply(array)
  result =  1
  array.each do |value|
    result *= value
  end
end
