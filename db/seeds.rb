# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.create(first_name: 'Joe', last_name: 'Boi', active: true)
Student.create(first_name: 'red', last_name: 'green', active: false)
Student.create(first_name: 'Fred', last_name: 'boyle')
#t.string :first_name
 #     t.string :last_name