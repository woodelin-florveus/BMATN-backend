# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




user_1 = User.create(name:"Woodelin", email:"Woodelin@yahoo.com", password:"abc123")
user_2 = User.create(name:"Kevin", email:"Kevin@yahoo.com", password:"abc123")
user_3 = User.create(name:"Ashley", email:"Ashley@yahoo.com", password:"abc123")
user_4 = User.create(name:"Sam", email:"Sam@yahoo.com", password:"abc123")

trainer_1 = Trainer.create(name:"Kevin", image:"", bio:"", booked:false, rating: 1)
trainer_1 = Trainer.create(name:"Ashley", image:"", bio:"", booked:false, rating: 1)
trainer_1 = Trainer.create(name:"Sam", image:"", bio:"", booked:false, rating: 1)


