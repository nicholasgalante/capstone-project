# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "bcrypt"

puts "Clearing the database..."
[User, Cause, Donation].each do |model|
  model.delete_all
end

puts "🌱 Seeding users..."


u1 = Mentor.create(
  first_name: "Isabella",
  last_name: "Clark",
  email_address: "mentor1@example.com",
  type: "mentor",
  password_digest: BCrypt::Password.create("password"),
  company_name: "",
  status: "complete"
)

u2 = Mentor.create(
  first_name: "Elijah",
  last_name: "Ramirez",
  email_address: "mentor2@example.com",
  type: "mentor",
  password_digest: BCrypt::Password.create("password"),
)

u3 = Student.create(
   first_name: "Oliva",
   last_name: "Parker",
   email_address: "student1@example.com",
   type: "student",
   password_digest: BCrypt::Password.create("password"),
   mentor_id: u1.id,
   school_name: "CUNY Hunter College",
   degree_type: "Bachelors of Science",
   area_of_study: "Computer Science",
   expected_graduation: "07/01/2025",
   status: "complete",
 )
 
 u4 = Student.create(
   first_name: "Noah",
   last_name: "Foster",
   email_address: "student2@example.com",
   type: "student",
   password_digest: BCrypt::Password.create("password"),
   mentor_id: u1.id,
   school_name: "CUNY City college",
   degree_type: "Bachelors of Science",
   area_of_study: "Computer Engineering",
   expected_graduation: "",
   status: "incomplete",
 )