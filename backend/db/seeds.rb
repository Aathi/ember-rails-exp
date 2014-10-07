# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

bugs = Speaker.create(name: 'Bugs Bunny')
wile = Speaker.create(name: 'Will E Coyote')
sam  = Speaker.create(name: 'Yosimite Sam')

bugs.presentations.create(title: "What's up with Docs?")
bugs.presentations.create(title: "Of course you know")

wile.presentations.create(title: "Yoyoyo coz I'm Lorde")

sam.presentations.create(title: "Where are you Kim Jon Un")
sam.presentations.create(title: "He will appear soon")
sam.presentations.create(title: "South and North korea")
