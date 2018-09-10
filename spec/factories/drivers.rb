FactoryBot.define do
  factory :driver do
    email {Faker::Internet.email}
    password {Faker::Internet.password}
  end
end
