class CreateFeedbacks < ActiveRecord::Migration[6.1]
  def change
    create_table :feedbacks do |t|
      t.string :content
      t.integer :trainer_id
      t.integer :user_id

      t.timestamps
    end
  end
end
