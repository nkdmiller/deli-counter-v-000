katz_deli = []
def line(katz_deli)
  if katz_deli.length == 0
    puts "The line is currently empty."
    return
  else
    line_report = "The line is currently:"
    counter = 0
    katz_deli.each do |customer|
      counter += 1
      line_report << " #{counter}. #{customer}"
    end
    puts line_report
  end
end

def take_a_number(katz_deli, customer)
  katz_deli << customer
  puts "Welcome, #{customer}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
    return
  else
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
end
