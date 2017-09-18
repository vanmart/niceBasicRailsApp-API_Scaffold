class CreateParkings < ActiveRecord::Migration[5.0]
  def change
    create_table :parkings do |t|
      t.string :name, null: false
      t.string :address
      t.integer :phone, null: false
      t.string :email, null: false

      t.timestamps
    end
  end
end
