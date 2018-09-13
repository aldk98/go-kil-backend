FactoryBot.define do
  factory :order do
    customer
    driver
    fare 1000
    status "pending"
    start_location {{ 
      "formatted_address": "Jalan Kyai Haji Syahdan No.9, RT.6/RW.12, Kemanggisan,
       Palmerah, RT.6/RW.12, Palmerah, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11480, Indonesia",
      "geometry":{
        "location":{
          "lat": -6.200250200000001,
          "lng": 106.78547300000002
        }
      }
     }}
    end_location {{ 
      "formatted_address": "Jalan Anggrek Cakra No.1A, RT.4/RW.6, Kebon Jeruk, 
      RT.1/RW.9, Kb. Jeruk, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11540, Indonesia",
      "geometry":{
        "location":{
          "lat": -6.201804800000001,
          "lng": 106.78159170000004
        }
      }
     }}
  end

  factory :order_without_customer, class: Order do
    fare 2000
    status "pending"
  end
end
