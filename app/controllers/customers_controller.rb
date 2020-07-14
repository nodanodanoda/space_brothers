class CustomersController < ApplicationController
	before_action :authenticate_customer!

	def mypage
		@customer = current_customer
	end

	def fix
		@customer = current_customer
	end

	def fix_update
		@user = current_customer
		if @user.update(customer_params)
		  redirect_to customers_mypage_path
	    else
	      render "fix"
	    end
	end
	def customer_params
  	params.require(:customer).permit(:name_sei, :name_mei, :yomi_sei, :yomi_mei, :postal_code, :address, :tell, :email )
    end

end
