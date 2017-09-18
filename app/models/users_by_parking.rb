class UsersByParking < ApplicationRecord
  belongs_to :parking
  belongs_to :user
end
