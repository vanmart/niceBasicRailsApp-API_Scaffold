class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :assign_default_role

  has_many :users_by_parkings
  has_one :parking

  before_save { email.downcase! }


  validates :name, presence: true,
                    format: { with: /\A\S[a-z ñ A-Z Ñ\s]*\S\z/ }
  validates :last_name, presence: true,
                    format: { with: /\A\S[a-z A-Z\s]*\S\z/ }
  validates :address, presence: true

  validates :document, presence: true,
                    :numericality => {:only_integer => true}
  validates :phone, presence: true,
                    :numericality => {:only_integer => true}
  validates :email, presence: true,
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }

  def assign_default_role
    #self.add_role(:RegularUser) if self.roles.blank?
    self.add_role(:RegularUser)
  end
end
