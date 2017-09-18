class Parking < ApplicationRecord
  has_many :users_by_parkings
  has_many :users, through: :users_by_parkings
  belongs_to :owner, :class_name => "User", foreign_key: :user_id

  validates :name, presence: true, uniqueness: { case_sensitive: false }

end
