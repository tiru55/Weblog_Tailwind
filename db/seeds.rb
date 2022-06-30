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
puts "Seeding Categories"
cat1 = Category.create(definition: "Gsuite")
cat2 = Category.create(definition: "Zoho")
cat3 = Category.create(definition: "Ruby on Rails")
cat4 = Category.create(definition: "Mysql")
cat5 = Category.create(definition: "Ubuntu")
cat6 = Category.create(definition: "Windows")
cat7 = Category.create(definition: "Hardware")
cat8 = Category.create(definition: "Email Templates")
cat9 = Category.create(definition: "Android Studio")
cat10 = Category.create(definition: "Ionic")
puts "Seeding Sub Categories"
subcat1 = SubCategory.create(definition: "Users",category_id: 1)
subcat2 = SubCategory.create(definition: "Groups",category_id: 1)
subcat3 = SubCategory.create(definition: "Domain Whitelisting",category_id: 1)
subcat4 = SubCategory.create(definition: "Zoho One",category_id: 2)
subcat5 = SubCategory.create(definition: "Analytics",category_id: 2)
subcat6 = SubCategory.create(definition: "Cliq",category_id: 2)
subcat7 = SubCategory.create(definition: "Connect",category_id: 2)
subcat8 = SubCategory.create(definition: "Desk",category_id: 2)
subcat9 = SubCategory.create(definition: "Expense",category_id: 2)
subcat10 = SubCategory.create(definition: "Mail",category_id: 2)
subcat11 = SubCategory.create(definition: "People",category_id: 2)
subcat12 = SubCategory.create(definition: "Projects",category_id: 2)
subcat13 = SubCategory.create(definition: "Sales IQ",category_id: 2)
subcat14 = SubCategory.create(definition: "Sprints",category_id: 2)
subcat15 = SubCategory.create(definition: "Installation",category_id: 3)
subcat16 = SubCategory.create(definition: "Bundle Errors",category_id: 3)
subcat17 = SubCategory.create(definition: "DataBase",category_id: 3)
subcat18 = SubCategory.create(definition: "Installation",category_id: 4)
subcat19 = SubCategory.create(definition: "Password Less",category_id: 4)
subcat20 = SubCategory.create(definition: "Connection Issues",category_id: 4)
visibility = Visibility.create(definition: "Public")
visibility = Visibility.create(definition: "Private")
puts "*"*20
puts "Seeding done......"

