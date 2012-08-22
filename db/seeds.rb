# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Terrains
Terrain.create name: 'Beach'
Terrain.create name: 'Rock'
Terrain.create name: 'Coastal Waters'
Terrain.create name: 'Open Sea'
Terrain.create name: 'Dock'
Terrain.create name: 'Bridge'
Terrain.create name: 'River'
Terrain.create name: 'River Mouth'
Terrain.create name: 'Lake'
Terrain.create name: 'Pond'

Fish.create name: 'Diplodus Sargus Sargus'
Fish.create name: 'Dicentrarchus Labrax'

Technique.create name: 'Spinning'
Technique.create name: 'Surfcasting'
Technique.create name: 'Spearfishing'