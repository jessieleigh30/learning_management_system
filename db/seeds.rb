roles = ["teacher", "ta", "student"]
10.times do
  course = Course.create(
    name: Faker::Educator.course_name
  )
  10.times do
    user = User.create(
      first_name: Faker::TvShows::HeyArnold.character,
      last_name: Faker::Games::SuperSmashBros.stage
    )

    Enrollment.create(
      role: roles.sample,
      course_id: course.id,
      user_id: user.id
    )
  end
end

puts "data seeded"