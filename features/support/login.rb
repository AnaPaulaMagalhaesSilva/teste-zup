class Login
	include Capybara::DSL

	def login
		find('input#email-input').send_keys "test-zup@gmail.com"
		find('input#password-input').send_keys "12345ana"
		find('button#login-button').click
	end

	def checkProduct
		find("div.payment-summary__content").find('a.link-default.cursor-pointer').click
		raise "You are not on order sumary!" unless find('header.modal-header').text.include? "resumo da sua compra"
		raise "The product in the cart is not the product you selected! " unless find('div.col-md-5.col-xs-12.text-lg-md').text.include? "Smartphone Samsung Galaxy S10"
	end
end