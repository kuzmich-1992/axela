class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :adposts , dependent: :destroy
  # has_many :rent_leases
  # has_many :rented_cars ,through: :rent_leases
  has_many :rented_cars , dependent: :destroy
end
