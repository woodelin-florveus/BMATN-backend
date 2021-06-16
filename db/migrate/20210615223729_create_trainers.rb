class CreateTrainers < ActiveRecord::Migration[6.1]
  def change
    create_table :trainers do |t|
      t.string :name
      t.string :image
      t.boolean :booked
      t.integer :rating
      t.string :bio

      t.timestamps
    end
  end
end
