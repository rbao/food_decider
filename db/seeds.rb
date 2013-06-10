# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.create!(name: "Fusaro's Kitchen", menu: 'http://fusaros.com/F1.pdf', 
  address: '147 Spadina Ave, Toronto', phone: '416-260-8414',
  site: 'http://fusaros.com/', yelp: "http://www.yelp.com/biz/fusaros-kitchen-toronto")

Restaurant.create!(name: "Fresco's Fish & Chips", menu: 'http://frescosfishandchips.com/menu-2/', 
  address: '213 Augusta Avenue in Kensington Market, Toronto', phone: '416-546-4557',
  site: 'http://frescosfishandchips.com/', yelp: "http://www.yelp.com/biz/frescos-fish-and-chips-toronto")

Restaurant.create!(name: "Ravi Soups", menu: 'http://ravisoup.com/', 
  address: '322 Adelaide Street W, Toronto', phone: '647-435-8365',
  site: 'http://ravisoup.com/', yelp: "http://www.yelp.ca/biz/ravi-soups-toronto")