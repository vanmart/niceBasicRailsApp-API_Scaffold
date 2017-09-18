class AddFieldsToUsersByParking < ActiveRecord::Migration[5.0]
  def change
    add_column :users_by_parkings, :user_id, :integer
    add_column :users_by_parkings, :parking_id, :integer
  end
end
