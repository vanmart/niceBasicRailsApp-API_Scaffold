# README

This README normally document necessary steps to get the
application up and running.

Things you may want to cover:

* Ruby version 2.4.1

* check Gemfile for System dependencies information

* Configuration
  you need to create your application.yml file based on application.yml.example 
  this file contain usernames, password and API credential that you won not share with people or reposity(Figaro gem), is here where you must put the Database connection information

* For Database creation execute: 
  rake db:create
* Database initialization
  rake db:migrate
  rake db:seed (default roles and users)

* to test use 'puma' on comand line. Done.
  visit localhost:3000 on web browser.
  
# Pre configured Services

  *Figaro:                  secret file for usernames, API credentials, passwords, etc.
  *Bootstrap:               for responsive design
  *Devise:                  for user authentication
  *Devise-bootstrap-views:  for pretty devise bootstrap views
  *Toastr:                  for nice alerts
  *FontAwasome:             nice icons
  *Rolify:                  for roles managment user can have one or many roles
  *RailsAdmin:              for adminstration dashboard localhost:3000/dashboard  only MasterAdmin role can acces
  *Cancancan:               for user permission or application access
  
  enjoy.
