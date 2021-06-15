class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :content
      t.integer :trainer_id

      t.timestamps
    end
  end
end
