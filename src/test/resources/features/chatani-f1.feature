@chatani-f1
Feature: teacher log in
  @scenario_1
  Scenario: Log in as a teacher and create Quiz with "Other" text area
    Given I open url "http://ask-stage.portnov.com/#/login"
    Then I type "student1ask@gmail.com" into element with xpath "//input[@formcontrolname='email']"

    Then I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 5 sec
    Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    And I wait for 5 sec
    Then I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
    And I wait for 1 sec
    Then I type "New Quiz" into element with xpath "//input[@formcontrolname='name']"
    Then I click on element with xpath "//mat-icon[contains(text(),'add_circle')]/../../.."
    Then I click on element with xpath "//*[contains(text(),'Single-Choice')]/../.."
    Then I type "What is today's date?" into element with xpath "//textarea[@formcontrolname='question']"
    Then I type "Answer1" into element with xpath "//textarea[@placeholder='Option 1*']"
    Then I type "Answer2" into element with xpath "//textarea[@placeholder='Option 2*']"
    Then I click on element with xpath "//div[@formarrayname='options']/../..//mat-radio-group[2]/mat-radio-button"
    Then I click on element with xpath "//*[contains(text(),'Include')]/../.."
    Then I click on element with xpath "//*[contains(text(),'Save')]/.."


