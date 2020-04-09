class Home	
	include Capybara::DSL

	def visitPage
		visit "https://www.americanas.com.br/"
		checkHome
	end

	def checkHome
		begin
			find("div.header-content")
			raise unless page.current_url.include? 'americanas' 
		rescue Exception => e
        raise "Something didn't perform as expected. Verify if the page has loaded correctly. " + e.to_s
     end
	end

	def searchProduct
		begin
			find('input#h_search-input', :visible => true).send_keys "s10+", :enter
			within('div#section-wrapper') do 
				product = find('h1.h1.page-title').text
				raise unless product.include? "s10" 
			end
		rescue Exception => e
			raise "Something didn't perform as expected. Verify if your research did well. " + e.to_s
		end
	end

end