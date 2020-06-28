class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name_sei, :name_mei, :yomi_sei, :yomi_mei, :postal_code, :address, :tell, :email, presence: true
end
