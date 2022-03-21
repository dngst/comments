require 'faker'

25.times do
  Comment.create!(
    body: Faker::TvShows::BojackHorseman.quote
  )
end

p "Created #{Comment.count} comments"
