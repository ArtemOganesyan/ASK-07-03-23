Feature: Test Set: Multiple Choice Question


  @SS_I
  Scenario: Teacher assigns quiz to student
    Given I open url "http://ask-stage.portnov.com"
    Then I type "student1ask@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//h5[contains(text(),'Assignments')]" to be present
    Then I wait for 2 sec
    Then I click on element with xpath "//h5[contains(text(),'Assignments')]/.."
    Then I wait for element with xpath "//button//span[contains(text(),'Create New Assignment')]/.." to be present
    Then I wait for 1 sec
    Then I click on element with xpath "//button//span[contains(text(),'Create New Assignment')]/.."
    Then I wait for element with xpath "//span[contains(text(),'Select Quiz To Assign')]/.." to be present
    Then I click on element with xpath "//span[contains(text(),'Select Quiz To Assign')]/.."
    Then I wait for element with xpath "//span[contains(text(),'# Mobile Demo 1')]/.." to be present
    Then I click on element with xpath "//span[contains(text(),'# Mobile Demo 1')]/.."
    Then I wait for element with xpath "//span[contains(text(),'AAA111')]/.." to be present
    Then I click on element with xpath "//span[contains(text(),'AAA111')]/.."
    Then I wait for element with xpath "//span[contains(text(),'Give Assignment')]/.." to be present
    Then I click on element with xpath "//span[contains(text(),'Give Assignment')]/.."


  @SS_II
  Scenario: User creates a question
    Given I open url "http://ask-stage.portnov.com"
    Then I type "student1ask@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//h5[contains(text(), 'Quizzes')]/.." to be present
    Then I click on element with xpath "//h5[contains(text(), 'Quizzes')]/.."
    Then I wait for element with xpath "//button//span[contains(text(), 'Create New Quiz')]" to be present
    Then I click on element with xpath "//button//span[contains(text(), 'Create New Quiz')]"
    Then I wait for element with xpath "//input[@formcontrolname='name']" to be present
    Then I type "My test quiz name" into element with xpath "//input[@formcontrolname='name']"
    Then I click on element with xpath "//*[contains(text(), 'add_circle')]/../.."


  @SS_III
  Scenario: User creates up to 15 choices
    Given I open url "http://ask-stage.portnov.com"
    Then I type "student1ask@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "////h5[contains(text(),'Quizzes')]/.." to be present
    Then I click on element with xpath "//h5[contains(text(), 'Quizzes')]/.."
    Then I wait for element with xpath "//button//span[contains(text(), 'Create New Quiz')]" to be present
    Then I click on element with xpath "//button//span[contains(text(), 'Create New Quiz')]"
    Then I wait for element with xpath "//input[@formcontrolname='name']" to be present
    Then I type "My test quiz name" into element with xpath "//input[@formcontrolname='name']"
#        Then I click on element with xpath "//*[contains(text(), 'add_circle')]/../.."
    Then I create 15 questions

  @SS_IV
  Scenario: User creates 16 questions
    Given I open url "http://ask-stage.portnov.com"
    Then I type "student1ask@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//h5[contains(text(), 'Quizzes')]/.." to be present
    Then I click on element with xpath "//h5[contains(text(), 'Quizzes')]/.."
    Then I wait for element with xpath "//button//span[contains(text(), 'Create New Quiz')]" to be present
    Then I click on element with xpath "//button//span[contains(text(), 'Create New Quiz')]"
    Then I wait for element with xpath "//input[@formcontrolname='name']" to be present
    Then I type "My test quiz name" into element with xpath "//input[@formcontrolname='name']"
      #Then I click on element with xpath "//*[contains(text(), 'add_circle')]/../.."
    Then I create 16 questions
    Then I wait for element with xpath "//mat-panel-title[contains(text(),'Q16: new empty question')]" to not be present
