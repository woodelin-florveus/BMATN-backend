# reset pk sequences 

User.destroy_all
Trainer.destroy_all
Appointment.destroy_all

#######################

User.reset_pk_sequence
Trainer.reset_pk_sequence
Appointment.reset_pk_sequence




user_1 = User.create(name:"Woodelin", email:"Woodelin@yahoo.com", password_digest:"abc123")
user_2 = User.create(name:"Kevin", email:"Kevin@yahoo.com", password_digest:"abc123")
user_3 = User.create(name:"Ashley", email:"Ashley@yahoo.com", password_digest:"abc123")
user_4 = User.create(name:"Sam", email:"Sam@yahoo.com", password_digest:"abc123")

trainer_1 = Trainer.create(name:"Kevin", image:"", bio:"hello ready and willing to train", booked:false, rating: 1)
trainer_2 = Trainer.create(name:"Ashley", image:"", bio:"hello ready and willing to train", booked:true, rating: 1)
trainer_3 = Trainer.create(name:"Sam", image:"", bio:"hello ready and willing to train", booked:false, rating: 1)

appointment_1 = Appointment.create(trainer_id: trainer_1.id, user_id:user_1.id, location: "brooklyn", date: DateTime.new(2021, 8, 29, 22, 35, 0))
appointment_2 = Appointment.create(trainer_id: trainer_2.id, user_id:user_2.id, location: "bushwick", date: DateTime.new(2021, 8, 29, 22, 35, 0))


feedback_1 = Feedback.create(content:"great trainer helped with my cardio", trainer_id: trainer_1.id, user_id: user_1.id)
feedback_2 = Feedback.create(content:"great training session got a chance to improve my flexibility", trainer_id: trainer_2.id, user_id: user_1.id)




# DateTime.new(2012, 8, 29, 22, 35, 0).change(day: 1)  

# create_table :appointments do |t|
#     t.integer :trainer_id
#     t.integer :user_id
#     t.string :location
#     t.date :date
#     t.timestamp :time

#     t.timestamps

