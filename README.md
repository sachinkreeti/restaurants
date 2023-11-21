# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

rails generate scaffold Restaurant name:string location:string cuisine:string rating:float

rails generate scaffold Review restaurant:references content:text rating:integer user_name:string

rails generate scaffold Menu restaurant:references dish_name:string price:decimal category:string

rails generate scaffold Reservation restaurant:references reservation_date:datetime party_size:integer user_name:string

## Scaffold

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

### After generating the scaffolds, run the migrations

rails db:migrate
