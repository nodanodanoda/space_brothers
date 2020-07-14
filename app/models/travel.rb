class Travel < ApplicationRecord
	has_many :bookings
	belongs_to :travel_genre
	enum sales_status:{sale:0, soldout:1}
    attachment :picture

    validates :name, presence: true
    validates :description, presence: true
    validates :price, presence: true
    validates :picture, presence: true
    validates :sales_status, presence: true

    scope :only_active, -> {
      where(travel_genre_id: TravelGenre.only_active)
     }
end
