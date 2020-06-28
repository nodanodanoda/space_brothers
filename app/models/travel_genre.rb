class TravelGenre < ApplicationRecord
	 has_many :travels
	# enum is_valid:{effectiveness:true, uneffectiveness:false}

	# validates :genre, presence: true
	# validates :is_valid, inclusion: {in: [true, false]}

	# scope :only_active, -> { where(is_valid: true) }
end
