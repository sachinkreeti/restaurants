class RestaurantMailer < ApplicationMailer
  def restaurant_created_email(restaurant)
    @restaurant = restaurant
    mail(to: 'HR@example.com', subject: 'New Restaurant Created')
  end
end
