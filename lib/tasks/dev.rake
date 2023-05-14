namespace :dev do
  desc "Configure the development environment"
  task setup: :environment do
    100.times do 
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        birthdate: Faker::Date.birthday(min_age: 18, max_age: 65)
      )
    end
  end
end
