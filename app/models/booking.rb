class Booking < ApplicationRecord
	belongs_to :travel
	belongs_to :customer

	# def sum_day
 #  	  strat_day + 
 #    end

end
