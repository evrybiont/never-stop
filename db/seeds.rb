# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
if AdminUser.count == 0
  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
end

if Brand.all.empty?
  ['BRIDGESTONE', 'CONTINENTAL', 'DUNLOP', 'METZELER', 'MICHELIN', 'PIRELLI'].each do |name|
    Brand.create name: name
  end
end

if Side.all.empty?
  ['Передня(Front)', 'Задня(Rear)'].each do |name|
    Side.create name: name
  end
end
