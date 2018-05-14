
5.times do 
  Driver.create(
    email: Faker::Internet.email,
    password: "password", 
    password_confirmation: "password",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone_number: Faker::PhoneNumber.cell_phone, 
    street_address_1: Faker::Address.street_address, 
    street_address_2: Faker::Address.secondary_address, 
    city: "San Francisco",
    state: "CA",
    zip_code: "94109",
    license_plate_number: "A1234567"
  )
end 

business_array = ["Profesional Painting Co.", "La Casa de los Sabores", "Flower Arrangements & More", "Affordable Cuts", "Gourmet Coffee Roasters"]

ad_array = ["https://images.pexels.com/photos/221027/pexels-photo-221027.jpeg?auto=compress&cs=tinysrgb&h=650&w=940", "https://images.pexels.com/photos/461198/pexels-photo-461198.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/529927/pexels-photo-529927.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/705255/pexels-photo-705255.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/302902/pexels-photo-302902.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"]


business_array.each do |business|
  Business.create(
    business_name: business,
    website_url: "www." + business + ".com",
    email: Faker::Internet.email,
    password: "password", 
    password_confirmation: "password",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
end

ad_array.each_with_index do |ad, index|
  Ad.create(
    image: ad,
    business_id: index + 1,
    availability: 10,
    duration: "3 months",
    city: "San Francisco",
    state: "CA",
    monthly_rate: "$80",
    zip_code: "94109",
    radius: "5 miles"
  )
end

5.times do |i|
  Car.create(
    driver_id: i + 1,
    ad_id: i + 1,
    make: "Honda",
    model: "Civic",
    year: 2012,
    mileage: 60000,
    car_image: "https://upload.wikimedia.org/wikipedia/commons/7/73/2012_Honda_Civic_EX_sedan_--_07-07-2011.jpg",
    odometer_image: "https://upload.wikimedia.org/wikipedia/commons/6/61/Honda_FREED-HYBRID_SPEEDMETER.JPG"
  )
end 
