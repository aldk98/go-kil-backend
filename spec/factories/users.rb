FactoryBot.define do
  factory :customer, class: 'User' do
    email "asd@asd.com"
    password "password"
    role "customer"
  end
  factory :driver, class: 'User' do
    email "asf@asd.com"
    password "password"
    role "driver"
  end
end
