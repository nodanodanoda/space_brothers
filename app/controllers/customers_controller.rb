class CustomersController < ApplicationController

	def mypage
		@user = current_customer
	end

	def fix
		@user = current_customer
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
