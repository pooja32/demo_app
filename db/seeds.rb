User.create!(name:  "Pooja Gupta",
             email: "pooja.gupta.kop@gmail.com",
             phone_no: "8657981804",
             password: "foobar",
             password_confirmation: "foobar",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)
             

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  phone_no = "9326402533"
  password = "password"
  User.create!(name: name, email: email, phone_no: phone_no, password: password, password_confirmation: password,activated: true,
              activated_at: Time.zone.now)
end
