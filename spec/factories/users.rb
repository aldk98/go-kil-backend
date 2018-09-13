FactoryBot.define do
  factory :user do
    email {Faker::Internet.email}
    password {Faker::Internet.password}
    address "blabla"
    phone "+627723723888"
    role "customer"
    last_location {{ 
      "formatted_address": "Jalan Kyai Haji Syahdan No.9, RT.6/RW.12, Kemanggisan,
       Palmerah, RT.6/RW.12, Palmerah, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11480, Indonesia",
      "geometry":{
        "location":{
          "lat": -6.200250200000001,
          "lng": 106.78547300000002
        }
      }
     }}
      factory :driver do
        role "driver"
      end
  end
end
