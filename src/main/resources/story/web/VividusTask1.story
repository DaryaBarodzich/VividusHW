Scenario: Task1 - Sign Up scenario
Given I am on the main application page
When I enter `<Email>` in field located `By.xpath((//*[@name='email'])[1])`
When I click on element located `By.xpath((//*[@type='submit'])[1])`
When I enter `<UserName>` in field located `By.xpath((//*[@name='displayName'])[1])`
!-- - The function of passing the captcha is not implemented
When I click on element located `By.xpath((//*[@type='submit'])[1])`
When I click on element located `By.xpath((//*[text()='Take me to Trello'])[1])`
Examples: 
|Email							   |UserName                                             |
|test.user@email.com			   |Test User											  |
|test.user1@mail.com			   |User User 											  |
|#{generate(Internet.emailAddress)}|#{generate(Name.firstName)} #{generate(Name.lastName)}|


Scenario: Task1 - API board creation
When I issue a HTTP POST request for a resource with the URL 'https://api.trello.com/1/boards/?name=<BoardName>&desc=<BoardDesc>&key=<key>&token=<token>'
Then the response code is equal to '200'
Examples:
|BoardName  	  |BoardDesc				   |key	  |token   |
|#{generate(Name)}|description of the new board|${key}|${token}|