# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if !User.exists?(username: "61Mv7nNK6K")
  admin = User.new({
                       username: "61Mv7nNK6K",
                       firstname: "The",
                       lastname: "Architect",
                       email: "support@digitalsynapse.io",
                       password: "zKwanusojq1kv8Ywg6tswijrTduuWu6du",
                       password_confirmation: "zKwanusojq1kv8Ywg6tswijrTduuWu6du"
                   })

  admin.toggle!(:admin)


  if admin.valid?
    admin.save()

  elsif admin.errors.any?
    admin.errors.full_messages.each do |msg|
      puts msg
    end
  else
    puts "****NOT VALID****"
  end
end


if !User.exists?(username: "admin")
  dummyAdmin1 = User.create({
                           username: "admin",
                           firstname: "admin",
                           lastname: "user",
                           email: "support@digitalsynapse.io",
                           password: "tymp3r2fqurxy15efYwtjjngkzHuCpQyi",
                           password_confirmation: "tymp3r2fqurxy15efYwtjjngkzHuCpQyi"
                       })
end

if !User.exists?(username: "root")
  dummyAdmin2 = User.create({
                             username: "root",
                             firstname: "admin",
                             lastname: "user",
                             email: "support@digitalsynapse.io",
                             password: "pa0hprj7cw6gunYj6dhxqrnwwRqiXrRjz",
                             password_confirmation: "pa0hprj7cw6gunYj6dhxqrnwwRqiXrRjz"
                         })
end