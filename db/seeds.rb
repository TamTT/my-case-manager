# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "in seed file"

robbery_case = Case.find_or_create_by(title: 'Robbery at the Main Restaurant', description: 'blah blah blah unidentified male robbed restaurant', value: 2000, court_date: DateTime.now )
speeding_case = Case.find_or_create_by(title: 'Speeding over 100mph arrest on 163 freeway', description: 'blah blah blah ', value: 1000, court_date: DateTime.now )

puts "ID: #{robbery_case.id} #{robbery_case.title} --- errors: #{robbery_case.errors.full_messages}"

chris = Contact.find_or_create_by(first_name: 'Chris', last_name: 'Hemsworth', case_role: 'client', email: 'josh@gmail.com', case_id:robbery_case.id)
ryan = Contact.find_or_create_by(first_name: 'Ryan', last_name: 'Gosling', case_role: 'witness', email: 'ryan@gmail.com', case_id:speeding_case.id)

puts "ID: #{chris.id} #{chris.first_name} --- errors: #{chris.errors.full_messages}"
