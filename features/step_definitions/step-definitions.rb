Given("the test configuration data has been intialized") do
  $poHome = Home.new
  $poSearch = Search.new
  $poLogin = Login.new
end

When("I access the webpage Magazine Luiza") do
  $poHome.visitPage
end

Then("I search for a product") do
  $poHome.searchProduct
end

And("I select the first produt showed") do
	$poSearch.selectProduct
end

And("I include the product to cart") do
	$poSearch.includeProductToCart
end

And ("I do login") do
	$poLogin.login
end

And("I check my product on cart") do
	$poLogin.checkProduct
end