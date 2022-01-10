Scenario: Task2 - Sign in
Given I am on the main application page
When I click on element located `By.xpath(//*[text()='Log in'])`
When I enter `${emailUser}` in field located `By.xpath((//*[@name='user'])[1])`
When I click on element located `By.xpath((//*[@type='submit'])[1])`
When I wait until element located `By.xpath(//*[@name='password'])` appears
When I enter `${emailPass}` in field located `By.xpath(//*[@name='password'])`
When I click on element located `By.xpath(//*[@type='submit'])`


Scenario: Task2 - User profile verification
When I wait until element located `By.xpath(//*[@data-test-id='header-member-menu-button'])` appears
When I click on element located `By.xpath(//*[@data-test-id='header-member-menu-button'])`
Then the text 'Test User' exists
When I click on element located `By.xpath(//*[text()='Profile and visibility'])`
When I wait until element located `By.xpath(//*[@data-tab="profile"])` appears
Then the text 'Test User' exists
Then the text '${userName}' exists


Scenario: Task2 - Visual Testing
When I click on element located `By.xpath(//*[@aria-label="Back to home"])`
When I wait until element located `By.xpath(//div[@data-desktop-id="header"])` appears
When I click on element located `By.xpath(//*[@title="Workspaces"])`
When I change context to element located `By.xpath((//*[@title="Workspaces"])[2])`
!-- - When I establish baseline with `Workspaces`
When I compare against baseline with `Workspaces`
When I click on element located `By.xpath(//*[@title="Recent"])`
When I change context to element located `By.xpath(//*[@title="Recent boards"])`
!-- - When I establish baseline with `Recent`
When I compare against baseline with `Recent`
When I click on element located `By.xpath(//*[@title="Starred"])`
When I change context to element located `By.xpath(//*[@title="Starred boards"])`
!-- - When I establish baseline with `Starred`
When I compare against baseline with `Starred`
When I click on element located `By.xpath(//*[@title="Templates"])`
When I change context to element located `By.xpath((//*[@title="Templates"])[2])`
!-- - When I establish baseline with `Templates`
When I compare against baseline with `Templates`
