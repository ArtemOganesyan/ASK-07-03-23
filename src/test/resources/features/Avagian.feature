Feature: Test Set: Single Choice Question

  @scenario_Kar1
  Scenario: Teacher assigns quiz to student
    Given I open url "http://ask-stage.portnov.com"
    Then I type "ilnehransi@mailnesia.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "123abc" into element with xpath "//*[@formcontrolname='password']"
    Then I click on element with xpath "//span[contains(text(),'Sign In')]"
    Then I wait for 2 sec
    Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    Then I wait for 2 sec
    Then I click on element with xpath "//*[contains(text(),'Create New Quiz')]"
    Then I wait for 2 sec
    Then I click on element with xpath "//input[@formcontrolname='name']"
    And I wait for element with xpath "//input[@formcontrolname='name']" to be present
    Then I type "Quick Quiz" into element with xpath "//input[@formcontrolname='name']"
    Then I click on element with xpath "//mat-icon[contains(text(), 'add_circle')]/../../..//button"
    Then I wait for 2 sec
    Then I click on element with xpath "//*[contains(text(),'Single-Choice')]/../../../..//mat-radio-button "
    Then I wait for 2 sec
    Then I wait for element with xpath "//textarea[@formcontrolname='question']" to be present
#    Then I type "What is QA ?" into element with xpath "//textarea[@formcontrolname='question'"

  @scenario_Kar2
  Scenario: Verify user can register with valid email
    Given I open url "http://ask-stage.portnov.com/#/login"
    Then I click on element with xpath "//span[contains(text(),'Register Now')]"
    And I wait for 1 sec
    Then I type "Tony" into element with xpath "//input[@formcontrolname='firstName']"
    Then I type "Stark" into element with xpath "//input[@formcontrolname='lastName']"
    Then I type "TonyStark@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "ABC" into element with xpath "//input[@formcontrolname='group']"
    Then I type "password" into element with xpath "//input[@formcontrolname='password']"
    Then I type "password" into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then I click on element with xpath "//span[contains(text(),'Register Me')]"
    And I wait for 1 sec
