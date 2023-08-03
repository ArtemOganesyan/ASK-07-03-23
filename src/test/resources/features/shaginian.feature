#shaginian add this new line
@saginian
  Feature: E2E for "Create and Delete Quiz"

    @scenario1
    Scenario: Teacher Create The Quiz
#    Log in as a teacher
      Given I open url "http://ask-stage.portnov.com"
    Then SOM type "ilnehransi@mailnesia.com" into "Email field"
    Then SOM type "123abc" into "Password field"
      Then I click on element with xpath "//button[@type='submit']"
#    Go to the Quizzes
      Then I wait for element with xpath "//h5[contains(text(), 'Quizzes')]" to be present
      Then I click on element with xpath "//h5[contains(text(), 'Quizzes')]"
#    Create the new quiz
      Then I wait for element with xpath "//span[contains(text(), 'Create New Quiz')]" to be present
      Then I click on element with xpath "//span[contains(text(), 'Create New Quiz')]"
#    Input the name of the quiz
      Then I wait for element with xpath "//input[@placeholder='Title Of The Quiz *']" to be present
      Then I type "Team3 Quiz for Gherkin" into element with xpath "//input[@placeholder='Title Of The Quiz *']"
#    Add a new question
      Then I click on element with xpath "//mat-icon [contains(text(), 'add_circle')]"
#    Selecting a 'Single-choice' question
      Then I wait for element with xpath "//*[contains(text(), 'Single-Choice')]" to be present
      Then I click on element with xpath "//*[contains(text(), 'Single-Choice')]"
    #    Input the question and answers
      Then I wait for element with xpath "//textarea[@formcontrolname='question']" to be present
      Then I type "How are you doing?" into element with xpath "//textarea[@formcontrolname='question']"
      Then I type "Good-good)" into element with xpath "//textarea[@placeholder='Option 1*']"
      Then I type "So-so(" into element with xpath "//textarea[@placeholder='Option 2*']"
#    Select correct answer
      Then I click on element with xpath "//*[@id='mat-radio-6-input']/.."
#    Change the points per question to 10
      Then I move slider with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//mat-slider" to the "right" for 5 steps
#    And change the Passing Rate to 50%
      Then I click on element with xpath "//span[@class='mat-button-wrapper'][contains (text(), '-')]" for 25 times
#    Save Quiz
      Then I click on element with xpath "//span[contains(text(), 'Save')]"
      Then I wait for 1 sec
#    Log-out
      Then I click on element with xpath "//h5[contains(text(),'Log Out')]"
      Then I wait for element with xpath "//span[contains(text(),'Log Out')]" to be present
      Then I click on element with xpath "//span[contains(text(),'Log Out')]"
      Then I wait for 3 sec


      @scenario2
      Scenario: Teacher Delete The Quiz
#    Log-in as a teacher
        Given I open url "http://ask-stage.portnov.com"
        Then I type "teacher@gmail.com" into element with xpath "//input[@formcontrolname='email']"
        Then I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
        Then I click on element with xpath "//button[@type='submit']"
    #    Go to the Quizzes
        Then I wait for element with xpath "//h5[contains(text(), 'Quizzes')]" to be present
        Then I wait for 1 sec
        Then I click on element with xpath "//h5[contains(text(), 'Quizzes')]"
        Then I wait for 1 sec
        Then I click on element with xpath "//*[contains(text(), 'Team3 Quiz for Gherkin')]"
        Then I wait for 1 sec
        Then I click on element with xpath "//mat-panel-title[contains(text(), 'Team3 Quiz for Gherkin')]/../../..//span[contains(text(), 'Delete')]/.."
        Then I wait for 1 sec
        Then I click on element with xpath "//ac-modal-confirmation//span[contains(text(), 'Delete')]"
        Then I wait for 1 sec
#  Log-out
        Then I click on element with xpath "//h5[contains(text(),'Log Out')]"
        Then I wait for element with xpath "//span[contains(text(),'Log Out')]" to be present
        Then I click on element with xpath "//span[contains(text(),'Log Out')]"
        Then I wait for 3 sec
