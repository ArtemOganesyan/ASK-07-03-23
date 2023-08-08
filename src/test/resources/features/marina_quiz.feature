#I hope your day goes well just like this feature file

@marina_quiz
Feature: ASK Quiz

  @mar_q_1
  Scenario: Teacher Creates and Deletes a Quiz
    Given I open url "http://ask-stage.portnov.com/"
    Then I should see page title as "Assessment Control @ Portnov"
    Then element with xpath "//ac-login-page/../..//h3" should contain text "Assessment Control"
    Then element with xpath "//ac-login-page/../..//h5" should contain text "Portnov Computer School"
    Then element with xpath "//img[@class='center-logo']" should be displayed
    Then element with xpath "//button/..//span[contains(text(), 'Sign In')]" should be displayed
    Then MUJ type "student1ask@gmail.com" into "Email field"
    Then MUJ type "12345Abc" into "Password field"
    Then I click on element with xpath "//*[contains(text(), 'Sign In')]"
    And I wait for element with xpath "//h5[contains(text(),'Quizzes')]" to be present
    Then I wait for 2 sec
#    Then element with xpath "//ac-side-menu/mat-list/header/div/p" should contain text "TEACHER"
    Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    And I wait for element with xpath "//*[contains(text(), 'Create New Quiz')]/.." to be present
    Then I click on element with xpath "//*[contains(text(), 'Create New Quiz')]/.."
    And I wait for element with xpath "//input[@formcontrolname='name']" to be present
    Then I type "marinaAutoQuiz" into element with xpath "//input[@formcontrolname='name']"
    Then I click on element with xpath "//mat-icon[contains(text(), 'add_circle')]/../../..//button"
    And I wait for 1 sec
    Then I click on element with xpath "//*[contains(text(),'Textual')]/../../../..//mat-radio-button"
    And I wait for 1 sec
    Then MUJ move slider with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//mat-slider" to the "left" for 3 steps
    And I wait for 1 sec
    And I wait for element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea" to be present
    And I wait for 1 sec
    Then I type "Why do we need Bug Tracking Database?" into element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea"
    And I wait for 1 sec
    Then I click on element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//mat-checkbox"
    Then I click on element with xpath "//mat-icon[contains(text(), 'add_circle')]/../../..//button"
    And I wait for 1 sec
    Then I click on element with xpath "//mat-panel-title[contains(text(), 'Q2')]/../../..//mat-radio-button[2]"
    And I wait for 1 sec
    And I wait for element with xpath "//mat-panel-title[contains(text(), 'Q2')]/../../..//textarea" to be present
    Then I type "What is the purpose of test completion criteria in a test plan?" into element with xpath "//mat-panel-title[contains(text(), 'Q2')]/../../..//textarea"
    And I wait for 1 sec
    Then I type "To ensure that the test case specification is complete." into element with xpath "//textarea[@placeholder='Option 1*']"
    Then I type "To plan when to stop testing." into element with xpath "//textarea[@placeholder='Option 2*']"
    And I wait for 1 sec
    Then I click on element with xpath "//div[@formarrayname='options']/../..//mat-radio-group[2]/mat-radio-button"
    Then I click on element with xpath "//*[contains(text(),'Other')]/.."
    And I wait for 1 sec
    Then I click on element with xpath "//mat-icon[contains(text(), 'add_circle')]/../../..//button"
    And I wait for 1 sec
    Then I click on element with xpath "//mat-panel-title[contains(text(), 'Q3')]/../../..//mat-radio-button[3]"
    And I wait for 1 sec
    Then I wait for element with xpath "//mat-panel-title[contains(text(), 'Q3')]/../../..//textarea" to be present
    Then I type " What are the components of bug report?" into element with xpath "//mat-panel-title[contains(text(), 'Q3')]/../../..//textarea"
    Then I type "Status." into element with xpath "//mat-panel-title[contains(text(), 'Q3')]/../../..//textarea[@placeholder='Option 1*']"
    And I wait for 1 sec
    Then I type "Test data." into element with xpath "//mat-panel-title[contains(text(), 'Q3')]/../../..//textarea[@placeholder='Option 2*']"
    Then MUJ move slider with xpath "//mat-panel-title[contains(text(), 'Q3')]/../../..//mat-slider" to the "right" for 4 steps
    And I wait for 1 sec
    Then I click on element with xpath "//mat-panel-title[contains(text(), 'Q3')]/../../..//mat-checkbox[1]"
    Then element with xpath "//ac-quiz-passing-percentage/..//h3" should contain text "Passing Rate"
    Then element with xpath "//ac-quiz-passing-percentage/..//h1" should contain text "75%"
    Then element with xpath "//ac-quiz-passing-percentage/..//h5" should contain text "12 of 16 Points"
    Then I click on element with xpath "//span[contains(text(), 'Save')]/.."
    Then I wait for element with xpath "//div[@class='quizzes']" to be present
    Then element with xpath "//div[@class='quizzes']" should contain text "marinaAutoQuiz"
    Then I click on element with xpath "//*[contains(text(), 'marinaAutoQuiz')]/..//mat-panel-description[contains(text(), '3 Question(s)')]"
    And I wait for 2 sec
    And I wait for element with xpath "//*[contains(text(), 'marinaAutoQuiz')]/../../..//*[contains(text(), 'Delete')]" to be present
    Then I click on element with xpath "//*[contains(text(), 'marinaAutoQuiz')]/../../..//*[contains(text(), 'Delete')]"
    Then I click on element with xpath "//mat-dialog-container[@role='dialog']/../..//button[2]"
    And I wait for element with xpath "//div[@class='quizzes']" to be present
    Then I wait for 5 sec
    Then element with xpath "//div[@class='quizzes']" should not contain text "marinaAutoQuiz"
    Then I click on element with xpath "//h5[contains(text(),'Log Out')]"
    Then I click on element with xpath "//ac-modal-confirmation/../..//button/..//*[contains(text(), 'Log Out')]"
    And I wait for element with xpath "//ac-login-page/../..//h3" to be present
    Then element with xpath "//ac-login-page/../..//h3" should contain text "Assessment Control"
    Then element with xpath "//ac-login-page/../..//h5" should contain text "Portnov Computer School"
    Then element with xpath "//img[@class='center-logo']" should be displayed
    Then element with xpath "//button/..//span[contains(text(), 'Sign In')]" should be displayed
    Then MUJ element "Email field" should not contain text "student1ask@gmail.com"
    Then MUJ element "Password field" should not contain text "12345Abc"

  @mar_q_2
  Scenario Outline: Teacher Creates and Deletes a Quiz Outline
    Given I open url "http://ask-stage.portnov.com/"
    Then I should see page title as "Assessment Control @ Portnov"
    Then element with xpath "//ac-login-page/../..//h3" should contain text "Assessment Control"
    Then element with xpath "//ac-login-page/../..//h5" should contain text "Portnov Computer School"
    Then element with xpath "//img[@class='center-logo']" should be displayed
    Then element with xpath "//button/..//span[contains(text(), 'Sign In')]" should be displayed
    Then MUJ type "student1ask@gmail.com" into "Email field"
    Then MUJ type "12345Abc" into "Password field"
    Then I click on element with xpath "//*[contains(text(), 'Sign In')]"
    And I wait for element with xpath "//h5[contains(text(),'Quizzes')]" to be present
    And I wait for 2 sec
#    Then element with xpath "//ac-side-menu/mat-list/header/div/p" should contain text "TEACHER"
    Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    And I wait for element with xpath "//*[contains(text(), 'Create New Quiz')]/.." to be present
    Then I click on element with xpath "//*[contains(text(), 'Create New Quiz')]/.."
    And I wait for element with xpath "//input[@formcontrolname='name']" to be present
    Then I type "marinaAutoQuiz" into element with xpath "//input[@formcontrolname='name']"
    Then I click on element with xpath "//mat-icon[contains(text(), 'add_circle')]/../../..//button"
    And I wait for 1 sec
    Then I click on element with xpath "//*[contains(text(),'Textual')]/../../../..//mat-radio-button"
    And I wait for 1 sec
    Then MUJ move slider with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//mat-slider" to the "left" for 3 steps
    And I wait for 1 sec
    Then I type "<textual1>" into element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea"
    And I wait for 1 sec
    Then I click on element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//mat-checkbox"
    And I wait for 1 sec
    Then I click on element with xpath "//mat-icon[contains(text(), 'add_circle')]/../../..//button"
    And I wait for 1 sec
    Then I click on element with xpath "//mat-panel-title[contains(text(), 'Q2')]/../../..//mat-radio-button[2]"
    And I wait for 1 sec
    Then I type "<single-choice>" into element with xpath "//mat-panel-title[contains(text(), 'Q2')]/../../..//textarea"
    Then I type "<SC_answer1>" into element with xpath "//textarea[@placeholder='Option 1*']"
    And I wait for 1 sec
    Then I type "<SC_answer2>" into element with xpath "//textarea[@placeholder='Option 2*']"
    Then I click on element with xpath "//div[@formarrayname='options']/../..//mat-radio-group[2]/mat-radio-button"
    And I wait for 1 sec
    Then I click on element with xpath "//*[contains(text(),'Other')]/.."
    Then I click on element with xpath "//mat-icon[contains(text(), 'add_circle')]/../../..//button"
    And I wait for 1 sec
    Then I click on element with xpath "//mat-panel-title[contains(text(), 'Q3')]/../../..//mat-radio-button[3]"
    Then I wait for element with xpath "//mat-panel-title[contains(text(), 'Q3')]/../../..//textarea" to be present
    And I wait for 1 sec
    Then I type "<multiple-choice>" into element with xpath "//mat-panel-title[contains(text(), 'Q3')]/../../..//textarea"
    Then I type "<MC_answer1>" into element with xpath "//mat-panel-title[contains(text(), 'Q3')]/../../..//textarea[@placeholder='Option 1*']"
    And I wait for 1 sec
    Then I type "<MC_answer2>" into element with xpath "//mat-panel-title[contains(text(), 'Q3')]/../../..//textarea[@placeholder='Option 2*']"
    Then MUJ move slider with xpath "//mat-panel-title[contains(text(), 'Q3')]/../../..//mat-slider" to the "right" for 4 steps
    Then I click on element with xpath "//mat-panel-title[contains(text(), 'Q3')]/../../..//mat-checkbox[1]"
    Then element with xpath "//ac-quiz-passing-percentage/..//h3" should contain text "Passing Rate"
    Then element with xpath "//ac-quiz-passing-percentage/..//h1" should contain text "75%"
    Then element with xpath "//ac-quiz-passing-percentage/..//h5" should contain text "12 of 16 Points"
    Then I click on element with xpath "//span[contains(text(), 'Save')]/.."
    Then I wait for element with xpath "//div[@class='quizzes']" to be present
    Then element with xpath "//div[@class='quizzes']" should contain text "marinaAutoQuiz"
    Then I click on element with xpath "//*[contains(text(), 'marinaAutoQuiz')]/..//mat-panel-description[contains(text(), '3 Question(s)')]"
    And I wait for 2 sec
    And I wait for element with xpath "//*[contains(text(), 'marinaAutoQuiz')]/../../..//*[contains(text(), 'Delete')]" to be present
    Then I click on element with xpath "//*[contains(text(), 'marinaAutoQuiz')]/../../..//*[contains(text(), 'Delete')]"
    Then I click on element with xpath "//mat-dialog-container[@role='dialog']/../..//button[2]"
    And I wait for element with xpath "//div[@class='quizzes']" to be present
    Then I wait for 5 sec
    Then element with xpath "//div[@class='quizzes']" should not contain text "marinaAutoQuiz"
    Then I click on element with xpath "//h5[contains(text(),'Log Out')]"
    Then I click on element with xpath "//ac-modal-confirmation/../..//button/..//*[contains(text(), 'Log Out')]"
    And I wait for element with xpath "//ac-login-page/../..//h3" to be present
    Then element with xpath "//ac-login-page/../..//h3" should contain text "Assessment Control"
    Then element with xpath "//ac-login-page/../..//h5" should contain text "Portnov Computer School"
    Then element with xpath "//img[@class='center-logo']" should be displayed
    Then element with xpath "//button/..//span[contains(text(), 'Sign In')]" should be displayed
    Then MUJ element "Email field" should not contain text "student1ask@gmail.com"
    Then MUJ element "Password field" should not contain text "12345Abc"
    Examples:
      |textual1|single-choice|SC_answer1|SC_answer2|multiple-choice|MC_answer1|MC_answer2|
      |What is SQ Assurance?|focus of testing is?|business perspective|the system|3 levels?|Answer 1|Answer 2|
      |Why QA?|Purpose of test?|test case specification|to stop testing|How many test cases?|Answer 1|Answer 2|
      |What is Integration Testing?|Which testing phase?|Module testing|Module testing|What bug report?|Answer 1|Answer 2|
      |Bug Tracking Database?|Automation, why?|Recovery testing|response time|What processes?|Answer 1|Answer 2|
      |Risk Analysis?|Hello?| to find faults|understand the code|What is scrum?|Answer 1|Answer 2|
      |What is Cookies?|Which test planning?|Scheduling|Corrective actions.|What scrum master?|Answer 1|Answer 2|
      |What is SQL?|What Sprint?|A design|An increment|What is the bug?|Answer 1|Answer 2|
      |What is the meaning of life?|Product Backlog?|Value of the items|The complexity|What is the defect? |Answer 1|Answer 2|
      |How did you get here?|Sprint Retrospective?|Whenever|end of each Sprint|What is testing?|Answer 1|Answer 2|
      |Are you happy? |Who is responsible?|The Delivery Manager|The Product Owner|What is a test case?|Answer 1|Answer 2|

