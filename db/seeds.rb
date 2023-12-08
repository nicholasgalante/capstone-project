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

user1 = Mentor.create(
  first_name: "Isabella",
  last_name: "Clark",
  email_address: "mentor1@example.com",
  type: "Mentor",
  password_digest: BCrypt::Password.create("password"),
  company_name: "TechIndustry",
  job_title: "Senior Software Engineer",
  matched: True,
)

user2 = Mentor.create(
  first_name: "Elijah",
  last_name: "Ramirez",
  email_address: "mentor2@example.com",
  type: "Mentor",
  password_digest: BCrypt::Password.create("password"),
  company_name: "",
  job_title: "",
  matched: False,
)

user3 = Student.create(
  first_name: "Oliva",
  last_name: "Parker",
  email_address: "student1@example.com",
  type: "Student",
  password_digest: BCrypt::Password.create("password"),
  mentor_id: user1.id,
  school_name: "CUNY Hunter College",
  degree_type: "Bachelors of Science",
  area_of_study: "Computer Science",
  expected_graduation: "07/01/2025",
  matched: True,
)

user4 = Student.create(
  first_name: "Noah",
  last_name: "Foster",
  email_address: "student2@example.com",
  type: "Student",
  password_digest: BCrypt::Password.create("password"),
  mentor_id: user1.id,
  school_name: "CUNY City college",
  degree_type: "Bachelors of Science",
  area_of_study: "Computer Engineering",
  expected_graduation: "",
  matched: False,
)

meeting1 = Meeting.create(
  organizer_id: user3.id,
  meeting_datetime: "2023-11-01T16:00:00-05:00",
  location: "Hunter Campus Library",
  topics_discussed: "Single table inheritance and entity relationship diagrams.",
  next_steps: "Start studing for your AWS certification on Udemy!",
)

meeting2 = Meeting.create(
  organizer_id: user3.id,
  meeting_datetime: "2023-11-17T13:00:00-05:00",
  location: "Hunter Campus Library",
  topics_discussed: "",
  next_steps: "",
)

UserMeeting.create(
  meeting_id: meeting1.id,
  user_id: user3.id,
)

UserMeeting.create(
  meeting_id: meeting1.id,
  user_id: user1.id,
)

UserMeeting.create(
   meeting_id: meeting2.id,
   user_id: user3.id,
 )
 
 UserMeeting.create(
   meeting_id: meeting2.id,
   user_id: user1.id,
 )
