#Shelkova feature file
@shelkova_f1
  Feature: Log in to the page
    Scenario: Log in 
      Given I open url "http://ask-stage.portnov.com/#/login"
      Then I type "teacher@gmail.com" into element with xpath "//input[@formcontrolname='email']"
      Then I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
      And I click on element using JavaScript with xpath "//button[@type='submit']"
      And I wait for 1 sec