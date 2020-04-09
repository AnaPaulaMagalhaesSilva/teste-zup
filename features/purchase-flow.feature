Feature: Magazine Luiza's Purchase flow

@checkPurchaseFlow
Scenario: Testing Magazine Luiza's purchase flow
	Given the test configuration data has been intialized 
	When I access the webpage Magazine Luiza
	Then I search for a product
		And I select the first produt showed
		And I include the product to cart
		And I do login 
		And I check my product on cart