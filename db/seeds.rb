# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
User.create(email: "doorkeeper@gmail.com", password: "123123123")
User.create(email: "client@gmail.com", password: "123123123")

Task.destroy_all
10.times.each do |i|
	Task.create(name: "Task No.#{i}")
end
