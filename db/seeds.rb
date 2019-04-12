 n = 0
 1000.times do
  App.find_or_create_by(
    name:  "my-app-#{"%03d" % (n += 1)}",  
    )

end
 
puts "#{App.count} apps in the system..."