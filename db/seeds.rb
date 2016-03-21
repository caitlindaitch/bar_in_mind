# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Neighborhood.destroy_all
Bar.destroy_all

columbia_heights = Neighborhood.create(name: "Columbia Heights", metro_stop: "Columbia Heights", image_url: "neighborhoods/columbia_heights.png")
dupont = Neighborhood.create(name: "Dupont Circle", metro_stop: "Dupont Circle", image_url: "neighborhoods/dupont.png")
u_street = Neighborhood.create(name: "U Street", metro_stop: "U Street", image_url: "neighborhoods/u_street.png")

meridian_pint = columbia_heights.bars.create(name: "Meridian Pint", category: "Craft Beer", price_meter: "$$", image_url: "bars/meridian_pint.png")
sauf_haus = dupont.bars.create(name: "Sauf Haus", category: "Biergarten", price_meter: "$$", image_url: "bars/sauf_haus.png")
big_hunt = dupont.bars.create(name: "The Big Hunt", category: "Comedy Club", price_meter: "$", image_url: "bars/the_big_hunt.png")
ninethirty = u_street.bars.create(name: "The 9:30 Club", category: "Live Music", price_meter: "$$$", image_url: "bars/930club.png")
