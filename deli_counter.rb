katz_deli = ["Logan", "Avi", "Spencer"]

def take_a_number(deli, name)
  deli << name
  puts "Welcome, #{name}. You are number #{deli.index(name)+1} in line."
end

def now_serving(deli)
  if deli.empty?
  	puts "There is nobody waiting to be served!" 
  else
  	person = deli.shift
  	puts "Currently serving #{person}."
  end
end

def line(deli)
  if deli.empty?
  	puts "The line is currently empty."
  else
  	ordered_line = deli.map {|name| "#{deli.index(name) + 1}. #{name}"}
  	puts "The line is currently: #{ordered_line.join(" ")}"
  	# deli.each {|name| print " #{deli.index(name) + 1}. #{name}"}
  end
end

take_a_number(katz_deli, "Diane")
line(katz_deli)