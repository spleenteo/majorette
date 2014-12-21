# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create :email => "admin@example.com", :password => "password"
User.create :email => "admin2@example.com", :password => "password"

List.create([{title: 'Majorette desired features', user_id: 1}])
List.create([{title: 'Majorette bugs', user_id: 2}])

Item.create([title: "Share items with social", description: "lorem ipsum solor sit", list_id: 1, user_id: 1])
Item.create([title: "Downvote item", description: "As user I wish to downvote something I don't like", url: "http://www.google.com", list_id: 1, user_id: 2])
Item.create([title: "Upvotes doesn't work", description: "lorem ipsum solor sit", url: "http://www.apple.com", list_id: 2, user_id: 1])
