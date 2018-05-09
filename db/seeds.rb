# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
20.times do 
	Student.create(
		name: Faker::Name.name,
		student_number: Faker::Number.number(3),
		faculty: Faker::Name.name_with_middle
	)
end

