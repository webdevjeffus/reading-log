# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Users
mustard = User.create!(
  username: 'colmustard',
  firstname: 'Colonel',
  lastname: 'Mustard',
  email: 'mustard@example.com',
  password: 'password'
)

plum = User.create!(
  username: 'profplum',
  firstname: 'Professor',
  lastname: 'Plum',
  email: 'plum@example.com',
  password: 'password'
)

scarlet = User.create!(
  username: 'missscarlet',
  firstname: 'Miss',
  lastname: 'Scarlet',
  email: 'scarlet@example.com',
  password: 'password'
)

# Rosters
grade1_sept = Roster.create!(
  name: 'Grade 1 - September',
  description: 'Read 15 minutes every night!',
  user: mustard
)

grade1_oct = Roster.create!(
  name: 'Grade 1 - October',
  description: 'Read 15 minutes every night!',
  user: mustard
)

grade2_sept = Roster.create!(
  name: 'Grade 2 - September',
  description: 'Read 15 minutes every night!',
  user: plum
)

grade3_sept = Roster.create!(
  name: 'Grade 3 - September',
  description: 'Read 20 minutes every night!',
  user: scarlet
)

# Readers
amy = Reader.create!(
  username: 'amy a',
  password: 'password',
  user: mustard,
  reading_level: 'F',
  firstname: 'Amy',
  lastname: 'A'
)

bobby = Reader.create!(
  username: 'bobby b',
  password: 'password',
  user: mustard,
  reading_level: 'G',
  firstname: 'Bobby',
  lastname: 'B'
)

carla = Reader.create!(
  username: 'carla c',
  password: 'password',
  user: mustard,
  reading_level: 'I',
  firstname: 'Carla',
  lastname: 'C'
)

ivy = Reader.create!(
  username: 'Ivy',
  password: 'password',
  user: plum,
  reading_level: 'L',
  firstname: 'Ivy'
)

jay = Reader.create!(
  username: 'Jay',
  password: 'password',
  user: plum,
  reading_level: 'K',
  firstname: 'Jay'
)

kevin = Reader.create!(
  username: 'kevin',
  password: 'password',
  user: plum,
  reading_level: 'M',
  firstname: 'Kevin'
)

pete = Reader.create!(
  username: 'pistol_pete',
  password: 'password',
  user: scarlet,
  reading_level: 'R',
  firstname: 'Pete',
  lastname: 'Perkins'
)

quentin = Reader.create!(
  username: 'q_tip',
  password: 'password',
  user: scarlet,
  reading_level: 'T',
  firstname: 'Quentin',
  lastname: 'Quinn'
)

rachel = Reader.create!(
  username: 'rachel_rocks',
  password: 'password',
  user: scarlet,
  reading_level: 'S',
  firstname: 'Rachel',
  lastname: 'Ross'
)

# Logs
amy_sept = Log.create!(
  roster: grade1_sept,
  reader: amy
)

bobby_sept = Log.create!(
  roster: grade1_sept,
  reader: bobby
)

carla_sept = Log.create!(
  roster: grade1_sept,
  reader: carla
)

ivy_sept = Log.create!(
  roster: grade2_sept,
  reader: ivy
)

jay_sept = Log.create!(
  roster: grade2_sept,
  reader: jay
)

kevin_sept = Log.create!(
  roster: grade2_sept,
  reader: kevin
)

pete_sept = Log.create!(
  roster: grade3_sept,
  reader: pete
)

quentin_sept = Log.create!(
  roster: grade3_sept,
  reader: quentin
)

rachel_sept = Log.create!(
  roster: grade3_sept,
  reader: rachel
)

