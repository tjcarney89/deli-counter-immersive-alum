# Write your code here.

def line(customers)
  if customers.empty?
    puts "The line is currently empty."
  else
    phrase = "The line is currently:"
    customers.each_with_index do |name, index|
      phrase += " #{index + 1}. #{name}"
    end
    puts phrase
  end
end

def take_a_number(line, customer)
  if line.empty?
    puts "Welcome, #{customer}. You are number 1 in line."
    line << customer
  else
    count = line.size
    puts "Welcome, #{customer}. You are number #{count + 1} in line."
    line << customer
  end
end

def now_serving(line)
  if line.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{line.first}."
    line.shift
  end
end
