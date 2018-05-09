FactoryBot.define do
  factory :student do
    name { Faker::Name.name }
    student_number { Faker::Number.number(3) }
    faculty { Faker::Lorem.word }
  end
end
