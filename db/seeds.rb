puts ""
puts ""
puts "Hey...! I am about to Seed the User and User Roles"
sleep 2
puts ""
puts "Seeding Started....."
puts "*"*20
puts ""
puts "Creating an Admin Account"
admin = User.create(email: 'admin@weblog.com',password: 'weblog@admin@121$',first_name: 'Administrator',last_name: 'Weblog',phone: '1234567890',designation: 'Administrator' ,department: 'Weblog')
admin.Admin!
puts ""
puts "Created Account Admin....."
puts ""
puts "Creating an User Account"
user = User.create(email: 'user@weblog.com',password: 'user@123',first_name: 'User',last_name: 'Weblog',phone: '1234567890',designation: 'User' ,department: 'Weblog')
user.User!
puts ""
puts "Created User Account...."
puts ""
sleep 2
puts ""
puts "*"*20
puts "Seeding done......"