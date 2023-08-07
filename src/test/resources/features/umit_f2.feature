@umit_f2
Feature: Automation Examples
  
  @test1
  Scenario: forgot password
    Given I open url "http://ask-stage.portnov.com/#/login"
    Then I click on element with xpath "//a[contains(text(),'I forgot my password')]"
    Then I type "student25@gmail.com" into element with xpath "//input[@id='mat-input-2']"
    Then I click on element with xpath "//span[contains(text(),'Request Password Reset')]"
    Then I should see page title as "Assessment Control @ Portnov"


  @test2
  Scenario: Check My Grades
    Given I open url "http:/ask-stage.portnov.com"
    When I type "student25@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    Then I click on element with xpath "//span[contains(text(),'Sign In')]"
    Then I wait for 3 sec
    Then I click on element with xpath "//h5[contains(text(),'My Grades')]"
    Then I wait for 3 sec
    Then I click on element with xpath "//span[contains(text(),'Details')]"
    Then I wait for element with xpath "//div[contains(text(),'ASSESSMENT FAILED')]" to be present
    Then I click on element with xpath "//span[contains(text(),'Close')]"
    Then I click on element with xpath "//h5[contains(text(),'Log Out')]"
    Then I wait for 3 sec
    Then I mouse over element with xpath "//span[contains(text(),'Log Out')]"
    Then I wait for 6 sec
    Then I click on element with xpath "//span[contains(text(),'Log Out')]"
    Then I should see page title as "Assessment Control @ Portnov"