# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb

# Helper method to generate random datetime within a range
def random_date_within_range(start_date, end_date)
  rand(start_date..end_date)
end

# Helper method to generate random boolean
def random_boolean
  rand(2) == 0
end

# Seed Restaurants
restaurants = []
1000.times do |i|
  restaurants << Restaurant.create!(
    name: "Restaurant #{i + 1}",
    location: Faker::Address.city,
    cuisine: Faker::Food.dish,
    rating: rand(1.0..5.0).round(1)
  )
end

# Seed associated models for each restaurant
restaurants.each do |restaurant|
  # Seed Reviews
  5.times do
    restaurant.reviews.create!(
      content: Faker::Lorem.paragraph,
      rating: rand(1..5),
      user_name: Faker::Internet.user_name
    )
  end

  # Seed Menus
  10.times do
    restaurant.menus.create!(
      dish_name: Faker::Food.dish,
      price: rand(5.0..50.0).round(2),
      category: Faker::Food.measurement
    )
  end

  # Seed Reservations
  3.times do
    restaurant.reservations.create!(
      reservation_date: random_date_within_range(1.month.from_now, 6.months.from_now),
      party_size: rand(1..10),
      user_name: Faker::Name.name
    )
  end

  # Seed Employees
  5.times do
    restaurant.employees.create!(
      name: Faker::Name.name,
      position: Faker::Job.title
    )
  end

  # Seed Ingredients
  10.times do
    restaurant.ingredients.create!(
      name: Faker::Food.ingredient,
      quantity: rand(1..100).to_f.round(2),
      unit: Faker::Food.metric_measurement
    )
  end

  # Seed Suppliers
  5.times do
    restaurant.suppliers.create!(
      name: Faker::Company.name,
      contact_person: Faker::Name.name,
      contact_number: Faker::PhoneNumber.phone_number
    )
  end

  # Seed Orders
  5.times do
    order = restaurant.orders.create!(
      order_date: random_date_within_range(1.month.ago, Time.current),
      total_amount: rand(50.0..500.0).round(2)
    )
  end

  # Seed Payments
  restaurant.orders.each do |order|
    order.payments.create!(
      payment_date: random_date_within_range(order.order_date, Time.current),
      amount: order.total_amount,
      payment_method: Faker::Business.credit_card_type
    )
  end

  # Seed Events
  3.times do
    restaurant.events.create!(
      name: Faker::Hipster.word,
      date: random_date_within_range(1.month.from_now, 6.months.from_now),
      description: Faker::Lorem.paragraph
    )
  end

  # Seed Promotions
  2.times do
    restaurant.promotions.create!(
      name: Faker::Commerce.product_name,
      start_date: random_date_within_range(1.week.from_now, 1.month.from_now),
      end_date: random_date_within_range(2.months.from_now, 4.months.from_now),
      discount_percentage: rand(5..30)
    )
  end

  # Seed Reservation Guests (linked to Reservations)
  restaurant.reservations.each do |reservation|
    reservation.reservation_guests.create!(
      guest_name: Faker::Name.name,
      contact_number: Faker::PhoneNumber.phone_number,
      email: Faker::Internet.email
    )
  end
end
