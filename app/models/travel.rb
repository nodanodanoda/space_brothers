class Travel < ApplicationRecord
	has_many :bookings
  has_many :tags
	belongs_to :travel_genre
	enum sales_status:{sale:0, soldout:1}
    attachment :picture

    validates :name, presence: true
    validates :description, presence: true
    validates :price, presence: true
    validates :picture, presence: true
    validates :sales_status, presence: true
    
end
