FactoryBot.define do
  factory :comment do
    body { Faker::TvShows::BojackHorseman.quote }
  end
end
