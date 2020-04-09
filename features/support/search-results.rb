class Search	
	include Capybara::DSL

	def selectProduct
		all('div.product-grid-item.ColUI-gjy0oc-0.hFbhrr.ViewUI-sc-1ijittn-6.iXIDWU')[0].click
		title = find("h1#product-name-default").text
		raise "Incorrect research" unless title.include? "Galaxy S10"
	end

	def includeProductToCart
		find('div.buy-button__ViewUI-sc-1pwzo3g-0.izMtHu.ViewUI-sc-1ijittn-6.iXIDWU').click
		find('button#btn-continue').click
		find('button#buy-button').click
	end


end