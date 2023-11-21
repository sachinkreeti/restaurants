# README

## Version

Rails 7.0.8
Ruby 3.0.6
NodeJs v18.17.1

## Application setup

- Setup the rails application
- Create Database - rails db:create
- Migrate Database - rails db:migrate
- Generate seed data - rails db:seed

## Scaffold the application

You don't need to do anything here. These were the commands used to scaffold this application.

### Scaffold the main Restaurant resource

rails generate scaffold Restaurant name:string location:string cuisine:string rating:float

### Scaffold Review resource associated with Restaurant

rails generate scaffold Review restaurant:references content:text rating:integer user_name:string

### Scaffold Menu resource associated with Restaurant

rails generate scaffold Menu restaurant:references dish_name:string price:decimal category:string

### Scaffold Reservation resource associated with Restaurant

rails generate scaffold Reservation restaurant:references reservation_date:datetime party_size:integer user_name:string

### Scaffold Employee resource associated with Restaurant

rails generate scaffold Employee restaurant:references name:string position:string

### Scaffold Ingredient resource associated with Restaurant

rails generate scaffold Ingredient name:string quantity:float unit:string

### Scaffold Supplier resource associated with Restaurant

rails generate scaffold Supplier name:string contact_person:string contact_number:string

### Scaffold Order resource associated with Restaurant

rails generate scaffold Order restaurant:references order_date:datetime total_amount:decimal

### Scaffold Payment resource associated with Restaurant

rails generate scaffold Payment order:references payment_date:datetime amount:decimal payment_method:string

### Scaffold Event resource associated with Restaurant

rails generate scaffold Event restaurant:references name:string date:datetime description:text

### Scaffold Promotion resource associated with Restaurant

rails generate scaffold Promotion restaurant:references name:string start_date:datetime end_date:datetime discount_percentage:integer

### Scaffold ReservationGuest resource associated with Reservation

rails generate scaffold ReservationGuest reservation:references guest_name:string contact_number:string email:string
