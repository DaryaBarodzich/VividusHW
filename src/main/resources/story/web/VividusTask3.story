GivenStories: precondition/precondition.story

Scenario:  Task3- Sign in - composite
When I login as registered user

Scenario:  Task3- validation UI - Nested steps
When I wait until element located `By.xpath(//*[text()="Most popular templates"])` appears
Then the text 'YOUR WORKSPACES' exists
Then the text 'My Trello Workspace' exists
When I find <= `1` elements by `By.xpath(//div[@data-desktop-id="header"])` and for each element do
|step|
|When I click on element located `By.xpath(//*[@title="Workspaces"])`|
|When I click on element located `By.xpath(//*[@title="Recent"])`    |
|When I click on element located `By.xpath(//*[@title="Starred"])`   |
|When I click on element located `By.xpath(//*[@title="Templates"])` |


