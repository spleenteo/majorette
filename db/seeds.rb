# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

List.create([{title: 'Visual design'}, {title: 'Spritz-plan topics'}])

Item.create([title: "Photoshop export html", description: "lorem ipsum solor sit", url: "http://www.ciccio.it", list_id: 1])
Item.create([title: "Illustrator path", description: "lorem ipsum solor sit", url: "http://www.google.com", list_id: 1])
Item.create([title: "Make better videos", description: "lorem ipsum solor sit", url: "http://www.apple.com", list_id: 1])
