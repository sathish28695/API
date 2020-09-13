# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
  
  2.5

* System dependencies

* Configuration

* Database creation
  
  Default, provided by the rails

* Database initialization

* How to run the test suite
  
  bundle exec rspec spec

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* Endpoints list

	post '/login' - login functionality

	get '/list_products' - List products

	post '/:user_id/add_product' - Add product to the user cart, User id needs to be passed.

	get '/:user_id/cart' - Get the cart for the user, User id needs to be passed.
