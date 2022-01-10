Scenario: Account creation - Login
Given I am on a page with the URL 'https://www.walmart.com'
When I click on element located `By.xpath(//*[@link-identifier='Account'])`
!-- - When I click on element located `By.xpath(//*[text()='Create an account'])`
!-- - Then the text 'Create your Walmart account' exists
!-- - When I enter `#{generate(Name.firstName)}` in field located `By.xpath((//*[@name='firstName'])[1])`
!-- - When I enter `#{generate(Name.lastName)}` in field located `By.xpath((//*[@name='lastName'])[1])`
!-- - When I enter `#{generate(Internet.emailAddress)}` in field located `By.xpath((//*[@name='email'])[2])`
!-- - When I enter `Test12345!` in field located `By.xpath((//*[@name='password'])[2])`
!-- - When I click on element located `By.xpath((//*[@type='submit'])[2])`
When I click on element located `By.xpath(//*[text()='Sign in'])`
Then the text 'Sign in to your Walmart account' exists
When I enter `test.user@email.com` in field located `By.xpath((//*[@name='email'])[1])`
When I enter `Test12345!` in field located `By.xpath((//*[@name='password'])[1])`
When I click on element located `By.xpath((//*[@type='submit'])[1])`
!-- - The function of passing the captcha is not implemented


Scenario: Search for a product
When I enter `Dune book` in field located `By.xpath((//*[@type='search']))`
When I click on element located `By.xpath(//*[@aria-label='Search icon'])`
Then the text 'Results for "Dune book"' exists


Scenario: Open product page
When I enter `Dune book` in field located `By.xpath((//*[@type='search']))`
When I click on element located `By.xpath(//*[@data-item-id='1MXDK48CXFPB'])`


Scenario: Add to cart product
When I click on element located `By.xpath(//*[text()='Add to cart'])`
Then the text 'Added to cart!' exists


Scenario: Navigation to cart
When I click on element located `By.xpath(//*[contains(text(),'View cart')]'])`
Then the text 'Cart' exists
When I click on element located `By.xpath(//*[contains(text(),'Continue to checkout')])`
Then the text 'Add address' exists