# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create([{name: "Hjulia Styrén", email: "hjulia.styren@gmail.com", password: "1234", password_confirmation: "1234"}, 
{name: "Antonia Cylinder", email: "antonia_cool@hotmail.com", password: "1234", password_confirmation: "1234"},
{name: "Kalle Bromslöf", email: "kalleb67@live.com", password: "1234", password_confirmation: "1234"},
{name: "Johan Sportratt", email: "xXxDemonSlayerxXx@gmail.com", password: "1234", password_confirmation: "1234"}])

Employee.create([{name: "Hjulia Styrén", user_id: 1, auth_level: 2},
{name: "Antonia Cylinder", user_id: 2, auth_level: 1},
{name: "Kalle Bromslöf", user_id: 3, auth_level: 2},
{name: "Johan Sportratt", user_id: 4, auth_level: 1}])

Carmodel.create([{brand: "BMW", model: "335i", price: 200000}, 
{brand: "Aston Martin", model: "Vanquish", price: 233000},
{brand: "Toyota", model: "Prius", price: 150000},
{brand: "Volvo", model: "240", price: 100000}])

Sale.create([{employee_id: 2, carmodel_id: 3},
{employee_id: 4, carmodel_id: 2},
{employee_id: 4, carmodel_id: 4},
{employee_id: 1, carmodel_id: 1},
{employee_id: 3, carmodel_id: 1},
{employee_id: 3, carmodel_id: 1},
{employee_id: 2, carmodel_id: 2},
{employee_id: 2, carmodel_id: 3}])

