class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :adposts , dependent: :destroy
  has_many :rented_leases
  has_many :rented_cars ,through: :rented_leases
  has_many :chats, foreign_key: :sender_id
  has_many :chat_messages, dependent: :destroy
end
