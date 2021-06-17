# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




user_1 = User.create(name:"Woodelin", email:"Woodelin@yahoo.com", password_digest:"abc123")
user_2 = User.create(name:"Kevin", email:"Kevin@yahoo.com", password_digest:"abc123")
user_3 = User.create(name:"Ashley", email:"Ashley@yahoo.com", password_digest:"abc123")
user_4 = User.create(name:"Sam", email:"Sam@yahoo.com", password_digest:"abc123")

trainer_1 = Trainer.create(name:"Kevin", image:"", bio:"hello ready and willing to train", booked:false, rating: 1)
trainer_2 = Trainer.create(name:"Ashley", image:"", bio:"hello ready and willing to train", booked:true, rating: 1)
trainer_3 = Trainer.create(name:"Sam", image:"", bio:"hello ready and willing to train", booked:false, rating: 1)

appointment_1 = Appointment.create(trainer_id: trainer_1.id, user_id:user_1.id, location: "brooklyn", date: DateTime.new(2021, 8, 12))
appointment_2 = Appointment.create(trainer_id: trainer_2.id, user_id:user_2.id, location: "bushwick", date: DateTime.new(2021, 8, 12))



# create_table :appointments do |t|
#     t.integer :trainer_id
#     t.integer :user_id
#     t.string :location
#     t.date :date
#     t.timestamp :time

#     t.timestamps

