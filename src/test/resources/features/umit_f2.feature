@umit_f2
Feature: Automation Examples
  
  @UA_test3
  Scenario: forgot password
    Given I open url "http://ask-stage.portnov.com/#/login"
    Then I click on element with xpath "//a[contains(text(),'I forgot my password')]"
    Then I type "student25@gmail.com" into element with xpath "//input[@id='mat-input-2']"
    Then I click on element with xpath "//span[contains(text(),'Request Password Reset')]"
    Then I take screenshot
    Then I should see page title as "Assessment Control @ Portnov"


  @UA_test4
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
    Then I take screenshot
    Then I click on element with xpath "//span[contains(text(),'Close')]"
    Then I click on element with xpath "//h5[contains(text(),'Log Out')]"
    Then I wait for 3 sec
    Then I mouse over element with xpath "//span[contains(text(),'Log Out')]"
    Then I wait for 6 sec
    Then I click on element with xpath "//span[contains(text(),'Log Out')]"
    Then I should see page title as "Assessment Control @ Portnov"
    
    
  @UA_test5
  Scenario: UA User Activation
    Given I open url "http://ask-stage.portnov.com/#/registration"
    Then UA type "Utest" into element with xpath "//input[@formcontrolname='firstName']"
    Then UA type "Tester" into element with xpath "//input[@formcontrolname='lastName']"
    Then UA type "fake@email.com" into element with xpath "//input[@formcontrolname='email']"
    Then UA type "XYZ123" into element with xpath "//input[@formcontrolname='group']"
    Then UA type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    Then UA type "12345Abc" into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then I take screenshot
    And UA click on element with xpath "//button[@type='submit']"
    Then UA activate user with email "fake@email.com"