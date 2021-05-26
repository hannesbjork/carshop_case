# README

Simple website for a car shop.

Software requirements and tested versions:

* rvm 1.29.12

  * Ruby 3.0.0 

  * Rails 6.1.3.2
  
* node.js 10.19.0
  
* npm 6.14.4

  * yarn 1.22.10
  
* postgreSQL 12.6 ubuntu

Tested and working on Ubuntu 20.04

Using postgreSQL: 

1. Install postgreSQL
2. Create a database called 'carshop'
3. Establish a user with appropriate previliges
4. Type the password and username in 'config/database.yml'
5. Run 'bin/rails db:migrate' to establish tables
6. Run 'bin/rails db:seed' to populate tables

You can use a log-in seen in 'seed.db' to log into the website

Run the server with 'rail s' in git root

NOTE. the log-in and restriction method is not very secure and should not be used on a real website.


