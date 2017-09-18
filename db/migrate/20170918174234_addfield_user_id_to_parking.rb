class AddfieldUserIdToParking < ActiveRecord::Migration[5.0]
  def change
    add_column :parkings, :user_id, :integer
  end
end
