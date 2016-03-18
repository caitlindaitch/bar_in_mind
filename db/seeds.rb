# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Neighborhood.destroy_all
Bar.destroy_all

columbia_heights = Neighborhood.create(name: "Columbia Heights", metro_stop: "Columbia Heights")
dupont = Neighborhood.create(name: "Dupont Circle", metro_stop: "Dupont Circle")
u_street = Neighborhood.create(name: "U Street", metro_stop: "U Street")

meridian_pint = columbia_heights.bars.create(name: "Meridian Pint", category: "Craft Beer", price_meter: "$$")
sauf_haus = dupont.bars.create(name: "Sauf Haus", category: "Biergarten", price_meter: "$$")
big_hunt = dupont.bars.create(name: "The Big Hunt", category: "Comedy Club", price_meter: "$")
ninethirty = u_street.bars.create(name: "The 9:30 Club", category: "Live Music", price_meter: "$$$")
