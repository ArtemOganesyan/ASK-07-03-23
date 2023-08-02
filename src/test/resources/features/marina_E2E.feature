#comment bc I'm trying my best here

@marina_E2E
Feature: ASK E2E

  @scenario_1
  Scenario: Teacher Creates a Quiz and Creates an Assignment
    Given I open url "http://ask-stage.portnov.com/"
    Then I should see page title as "Assessment Control @ Portnov"
    And element with xpath "//img[@class='center-logo']" should be present
    Then MUJ type "student1ask@gmail.com" into "Email field"
    Then MUJ type "12345Abc" into "Password field"
    Then I click on element with xpath "//span[contains(text(), 'Sign In')]/.."
    And I wait for element with xpath "//ac-side-menu/mat-list/header/div/p" to be present
    And I wait for 2 sec
    Then element with xpath "//ac-side-menu/mat-list/header/div/p" should contain text "TEACHER"
    Then I click on element with xpath "//h5[contains(text(), 'Quizzes')]"
    Then I wait for element with xpath "//*[contains(text(),'Create New Quiz')]/.." to be present
    Then I click on element with xpath "//*[contains(text(),'Create New Quiz')]/.."
    Then I wait for element with xpath "//input[@formcontrolname='name']" to be present
    Then I type "marinaAssignment" into element with xpath "//input[@formcontrolname='name']"
    Then I click on element with xpath "//mat-icon[contains(text(), 'add_circle')]/../.."
    Then I click on element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//mat-radio-button[1]"
    Then I wait for element with xpath "//textarea[@formcontrolname='question']" to be present
    Then I type "Textual question 1" into element with xpath "//textarea[@formcontrolname='question']"
    Then I click on element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//mat-checkbox"
    Then MUJ move slider with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../../..//mat-slider" to the "left" for 3 steps
    And I wait for element with xpath "//mat-icon[contains(text(), 'add_circle')]/../.." to be present
    Then I click on element with xpath "//mat-icon[contains(text(), 'add_circle')]/../../..//button"
    And I wait for element with xpath "//mat-panel-title[contains(text(), 'Q2')]/../../..//mat-radio-button[2]" to be present
    Then I click on element with xpath "//mat-panel-title[contains(text(), 'Q2')]/../../..//mat-radio-button[2]"
    And I wait for element with xpath "//mat-panel-title[contains(text(), 'Q2')]/../../..//textarea" to be present
    Then I type "Single-Choice question 2" into element with xpath "//mat-panel-title[contains(text(), 'Q2')]/../../..//textarea"
    Then I type "SC Answer 1" into element with xpath "//mat-panel-title[contains(text(), 'Q2')]/../../..//textarea[@placeholder='Option 1*']"
    Then I type "SC Answer 2" into element with xpath "//mat-panel-title[contains(text(), 'Q2')]/../../..//textarea[@placeholder='Option 2*']"
    Then I click on element with xpath "//textarea[@placeholder='Option 1*']/../../../../..//mat-radio-button"
    Then I click on element with xpath "//mat-icon[contains(text(), 'add_circle')]/../../..//button"
    Then I click on element with xpath "//mat-panel-title[contains(text(), 'Q3')]/../../..//mat-radio-button[3]"
    Then I wait for element with xpath "//mat-panel-title[contains(text(), 'Q3')]/../../..//textarea" to be present
    Then I type "Multiple-Choice question 3" into element with xpath "//mat-panel-title[contains(text(), 'Q3')]/../../..//textarea"
    Then I type "MC Answer 1" into element with xpath "//*[contains(text(), 'Q3')]/../../..//textarea[@placeholder='Option 1*']"
    Then I type "MC Answer 2" into element with xpath "//mat-panel-title[contains(text(), 'Q3')]/../../..//textarea[@placeholder='Option 2*']"
    Then I click on element with xpath "//mat-panel-title[contains(text(), 'Q3')]/../../..//span[contains(text(), 'Add Option')]/../..//button"
    Then I type "MC Answer 3" into element with xpath "//mat-panel-title[contains(text(), 'Q3')]/../../..//textarea[@placeholder='Option 3*']"
    Then I click on element with xpath "//mat-panel-title[contains(text(), 'Q3')]/../../..//span[contains(text(), 'Add Option')]/../..//button"
    Then I type "MC Answer 4" into element with xpath "//mat-panel-title[contains(text(), 'Q3')]/../../..//textarea[@placeholder='Option 4*']"
    Then I click on element with xpath "//mat-panel-title[contains(text(), 'Q3')]/../../..//span[contains(text(), 'Add Option')]/../..//button"
    Then I type "MC Answer 5" into element with xpath "//mat-panel-title[contains(text(), 'Q3')]/../../..//textarea[@placeholder='Option 5*']"
    Then I click on element with xpath "//mat-panel-title[contains(text(), 'Q3')]/../../..//textarea[@placeholder='Option 1*']/../../../../..//mat-checkbox"
    Then MUJ move slider with xpath "//mat-panel-title[contains(text(), 'Q3')]/../../..//mat-slider" to the "right" for 4 steps
    Then element with xpath "//ac-quiz-passing-percentage/..//h3" should contain text "Passing Rate"
    Then element with xpath "//ac-quiz-passing-percentage/..//h1" should contain text "75%"
    Then element with xpath "//ac-quiz-passing-percentage/..//h5" should contain text "12 of 16 Points"
    Then I click on element with xpath "//span[contains(text(), 'Save')]/.."
    And I wait for element with xpath "//ac-quizzes-list" to be present
    And I wait for element with xpath "//mat-accordion/.. //mat-panel-title[contains(text(), 'marinaAssignment')]" to be present
    Then element with xpath "//mat-accordion/.. //mat-panel-title[contains(text(), 'marinaAssignment')]" should contain text "marinaAssignment"
    Then I click on element with xpath "//h5[contains(text(), 'Assignments')]"
    Then element with xpath "//*[contains(text(), 'Create New Assignment')]/../..//button" should be present
    Then I click on element with xpath "//*[contains(text(), 'Create New Assignment')]/../..//button"
    Then element with xpath "//mat-selection-list[@formcontrolname='selectedUsers']" should be present
    Then I click on element with xpath "//*[contains(text(), 'Select Quiz To Assign')]/../../../..//mat-select"
    And I scroll to the element with xpath "//*[contains(text(), 'marinaAssignment')]/.." with offset 1
    Then I click on element with xpath "//*[contains(text(), 'marinaAssignment')]/.."
    And I scroll to the element with xpath "//*[contains(text(), 'Auto')]/../..//mat-pseudo-checkbox" with offset 1
    Then I click on element with xpath "//*[contains(text(), 'Auto')]/../..//mat-pseudo-checkbox"
    Then element with xpath "//form/div/h5" should contain text "Total Selected Students: 1"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//ac-assignments-list-page" to be present
    Then element with xpath "//h4" should contain text "List of Assignments"
    Then element with xpath "//span[contains(text(), 'marinaAssignment')]" should be present
    Then I click on element with xpath "//h5[contains(text(), 'Log Out')]"
    Then I click on element with xpath "//span[contains(text(), 'Log Out')]/.."
    And I wait for element with xpath "//img[@class='center-logo']" to be present
    Then MUJ element "Email field" should not contain text "student1ask@gmail.com"
    Then MUJ element "Password field" should not contain text "12345Abc"

  @scenario_2
  Scenario: Student Submits an Assignment
    Given I open url "http://ask-stage.portnov.com/"
    Then I should see page title as "Assessment Control @ Portnov"
    And element with xpath "//img[@class='center-logo']" should be present
    Then MUJ type "student0@gmail.com" into "Email field"
    Then MUJ type "12345Abc" into "Password field"
    Then I click on element with xpath "//span[contains(text(), 'Sign In')]/.."
    And I wait for element with xpath "//ac-side-menu/mat-list/header/div/p" to be present
    And I wait for 2 sec
    Then element with xpath "//ac-side-menu/mat-list/header/div/p" should contain text "STUDENT"
    And I wait for element with xpath "//span[@class='bold']/../..//p[contains(text(), 'You have')]" to be present
    Then element with xpath "//span[@class='bold']/../..//p[contains(text(), 'You have')]" should contain text "1"
    Then I click on element with xpath "//span[contains(text(), 'Go To My Assignments')]/.."
    Then element with xpath "//td/../../../../..//mat-card" should contain text "marinaAssignment"
    And I wait for element with xpath "//span[contains(text(), 'Go To Assessment')]/.." to be present
    And I wait for 2 sec
    Then I click on element with xpath "//span[contains(text(), 'Go To Assessment')]/.."
    Then I wait for element with xpath "//h4[contains(text(), 'marinaAssignment')]" to be present
    Then element with xpath "//p[contains(text(), 'Show-Stopper Question')]" should be present
    Then I type "Answer 1" into element with xpath "//textarea[@formcontrolname='textAnswer']"
    And I wait for element with xpath "//mat-radio-button[1]/label/div//div[@class='mat-radio-inner-circle']" to be present
    Then I click on element with xpath "//mat-radio-button[1]/label/div//div[@class='mat-radio-inner-circle']"
    Then I click on element with xpath "//mat-checkbox[1]/label//div[@class='mat-checkbox-inner-container']"
    Then I click on element with xpath "//span[contains(text(), 'Submit My Answers')]/.."
    And I wait for element with xpath "//ac-modal-notification/h1" to be present
    Then element with xpath "//ac-modal-notification/h1" should contain text "Success!"
    Then element with xpath "//ac-modal-notification/div/p" should contain text "Your submission has been accepted."
    Then I click on element with xpath "//*[contains(text(), 'Ok')]/.."
    Then I wait for element with xpath "//mat-card/div" to be present
    Then element with xpath "//mat-card/div" should contain text "You do not have any assignments at this moment"
    Then I click on element with xpath "//h5[contains(text(), 'My Grades')]"
    Then element with xpath "//h4[contains(text(), 'My Grades')]" should be present
    Then element with xpath "//td[@class='quiz-name']" should contain text "marinaAssignment"
    Then element with xpath "//span[@class='pending']" should contain text "PENDING"
    Then I click on element with xpath "//h5[contains(text(), 'Log Out')]"
    Then I click on element with xpath "//span[contains(text(), 'Log Out')]/.."
    And I wait for element with xpath "//img[@class='center-logo']" to be present
    Then MUJ element "Email field" should not contain text "student0@gmail.com"
    Then MUJ element "Password field" should not contain text "12345Abc"
    Then I wait for 2 sec

  @scenario_3
  Scenario: Teacher Grading the Submission
    Given I open url "http://ask-stage.portnov.com/"
    Then I should see page title as "Assessment Control @ Portnov"
    And element with xpath "//img[@class='center-logo']" should be present
    Then MUJ type "student1ask@gmail.com" into "Email field"
    Then MUJ type "12345Abc" into "Password field"
    Then I click on element with xpath "//span[contains(text(), 'Sign In')]/.."
    And I wait for element with xpath "//ac-side-menu/mat-list/header/div/p" to be present
    And I wait for 2 sec
    Then element with xpath "//ac-side-menu/mat-list/header/div/p" should contain text "TEACHER"
    Then I click on element with xpath "//h5[contains(text(), 'Submissions')]"
    Then element with xpath "//mat-card/h4" should contain text "Submissions"
    Then element with xpath "//td[contains(text(), 'marinaAssignment')]" should be present
    Then I wait for element with xpath "//td[contains(text(), 'marinaAssignment')]/..//button" to be present
    And I wait for 2 sec
    Then I click on element with xpath "//td[contains(text(), 'marinaAssignment')]/..//button"
    Then I wait for element with xpath "//ac-grade-form" to be present
    Then element with xpath "//td[@class='bold quiz-name']" should contain text "marinaAssignment"
    Then element with xpath "//td[contains(text(), 'Passing points / percentage:')]/..//td[@class='bold']" should contain text "12 of 16 / 75%"
    Then element with xpath "//td[contains(text(), 'Actual points / percentage:')]/..//td[@class='bold']" should contain text "15 of 16 / 94%"
    Then element with xpath "//div[@class='result']//div[1]" should contain text "ASSESSMENT FAILED"
    Then element with xpath "//div[@class='result']//div[2]" should contain text "failed show-stopper*"
    Then I click on element with xpath "//*[contains(text(), '1 of 3')]/../..//button[2]"
    Then element with xpath "//div[@class='result']//div[1]" should contain text "ASSESSMENT PASSED"
    Then element with xpath "//td[contains(text(), 'Actual points / percentage:')]/..//td[@class='bold']" should contain text "16 of 16 / 100%"
    Then I type "Great" into element with xpath "//*[contains(text(), '1 of 3')]/../..//textarea"
    Then I type "Wonderful" into element with xpath "//*[contains(text(), '2 of 3')]/../..//textarea"
    Then I type "Amazing" into element with xpath "//*[contains(text(), '3 of 3')]/../..//textarea"
    Then I type "Great job!" into element with xpath "//textarea[@formcontrolname='summary']"
    Then I click on element with xpath "//*[contains(text(), 'Save')]/.."
    Then I wait for element with xpath "//h4[contains(text(), 'Submissions')]" to be present
    Then element with xpath "//td[contains(text(), 'marinaAssignment')]" should not be present
    Then I click on element with xpath "//div[contains(text(), 'Reviewed')]"
    Then I wait for element with xpath "//td[contains(text(), 'marinaAssignment')]" to be present
    And I wait for 2 sec
    Then element with xpath "//td[contains(text(), 'marinaAssignment')]/..//span[contains(text(), 'PASSED')]" should contain text "PASSED"
    Then I click on element with xpath "//h5[contains(text(), 'Log Out')]"
    Then I click on element with xpath "//span[contains(text(), 'Log Out')]/.."
    And I wait for element with xpath "//img[@class='center-logo']" to be present
    Then MUJ element "Email field" should not contain text "student1ask@gmail.com"
    Then MUJ element "Password field" should not contain text "12345Abc"
    Then I wait for 2 sec


  @scenario_4
  Scenario: Student Can view graded Assignment
    Given I open url "http://ask-stage.portnov.com/"
    Then I should see page title as "Assessment Control @ Portnov"
    And element with xpath "//img[@class='center-logo']" should be present
    Then MUJ type "student0@gmail.com" into "Email field"
    Then MUJ type "12345Abc" into "Password field"
    Then I click on element with xpath "//span[contains(text(), 'Sign In')]/.."
    And I wait for element with xpath "//ac-side-menu/mat-list/header/div/p" to be present
    And I wait for 2 sec
    Then element with xpath "//ac-side-menu/mat-list/header/div/p" should contain text "STUDENT"
    Then element with xpath "//p[contains(text(), 'There are')]/span[1]" should contain text "1"
    Then element with xpath "//p[contains(text(), 'There are')]/span[2]" should contain text "0"
    Then I click on element with xpath "//*[contains(text(), 'Go To My Grades')]/.."
    Then element with xpath "//td[@class='quiz-name']" should contain text "marinaAssignment"
    And I wait for 2 sec
    Then I wait for element with xpath "//ac-student-grades-page/mat-card/div/table/tbody/tr/td/a/button" to be present
    Then I click on element with xpath "//ac-student-grades-page/mat-card/div/table/tbody/tr/td/a/button"
    Then element with xpath "//td[@class='bold quiz-name']" should contain text "marinaAssignment"
    Then element with xpath "//td[contains(text(), 'Actual points')]/..//td[@class='bold']" should contain text "16 of 16 / 100%"
    Then element with xpath "//div[@class='result']/div" should contain text "ASSESSMENT PASSED"
    Then element with xpath "//*[contains(text(), '1 of 3')]/..//div[contains(text(), 'Teacher Comment')]/.." should contain text "Great"
    Then element with xpath "//*[contains(text(), '2 of 3')]/..//div[contains(text(), 'Teacher Comment')]/.." should contain text "Wonderful"
    Then element with xpath "//*[contains(text(), '3 of 3')]/..//div[contains(text(), 'Teacher Comment')]/.." should contain text "Amazing"
    Then element with xpath "//div[contains(text(), 'Summary')]/.." should contain text "Great job!"
    Then I click on element with xpath "//*[contains(text(), 'Close')]/.."
    Then I wait for element with xpath "//h5[contains(text(), 'Log Out')]" to be present
    Then I click on element with xpath "//h5[contains(text(), 'Log Out')]"
    Then I click on element with xpath "//span[contains(text(), 'Log Out')]/.."
    And I wait for element with xpath "//img[@class='center-logo']" to be present
    Then MUJ element "Email field" should not contain text "student0@gmail.com"
    Then MUJ element "Password field" should not contain text "12345Abc"
    Then I wait for 2 sec

  @scenario_5
  Scenario: Teacher Deletes the Quiz and Assignment
    Given I open url "http://ask-stage.portnov.com/"
    Then I should see page title as "Assessment Control @ Portnov"
    And element with xpath "//img[@class='center-logo']" should be present
    Then I type "student1ask@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    Then I click on element with xpath "//span[contains(text(), 'Sign In')]/.."
    And I wait for element with xpath "//ac-side-menu/mat-list/header/div/p" to be present
    And I wait for 3 sec
    Then element with xpath "//ac-side-menu/mat-list/header/div/p" should contain text "TEACHER"
    Then I click on element with xpath "//h5[contains(text(), 'Quizzes')]"
    Then I wait for element with xpath "//h4[contains(text(), 'List of Quizzes')]" to be present
    Then element with xpath "//mat-panel-title[contains(text(), 'marinaAssignment')]" should be present
    Then I click on element with xpath "//mat-panel-title[contains(text(), 'marinaAssignment')]/..//mat-panel-description"
    Then I wait for element with xpath "//mat-panel-title[contains(text(), 'marinaAssignment')]/../../..//span[contains(text(), 'Delete')]/.." to be present
    Then I click on element with xpath "//mat-panel-title[contains(text(), 'marinaAssignment')]/../../..//span[contains(text(), 'Delete')]/.."
    And I wait for element with xpath "//ac-modal-confirmation/div/button[2]" to be present
    Then I click on element with xpath "//ac-modal-confirmation/div/button[2]"
    And I wait for 2 sec
    Then I wait for element with xpath "//h4[contains(text(), 'List of Quizzes')]" to be present
    Then element with xpath "//mat-panel-title[contains(text(), 'marinaAssignment')]" should not be present
    Then I click on element with xpath "//h5[contains(text(), 'Assignments')]"
    Then I wait for element with xpath "//h4[contains(text(), 'List of Assignments')]" to be present
    Then element with xpath "//*[contains(text(), 'marinaAssignment')]" should be present
    Then I wait for element with xpath "//*[contains(text(), 'marinaAssignment')]/../..//mat-icon[contains(text(), 'more_vert')]" to be present
    And I wait for 2 sec
    Then I click on element with xpath "//*[contains(text(), 'marinaAssignment')]/../..//mat-icon[contains(text(), 'more_vert')]"
    Then I wait for element with xpath "//div[@class='cdk-overlay-pane']/div/div/button" to be present
    And I wait for 1 sec
    Then I click on element with xpath "//div[@class='cdk-overlay-pane']/div/div/button"
    Then I wait for element with xpath "//ac-modal-confirmation/div/button[2]" to be present
    Then I click on element with xpath "//ac-modal-confirmation/div/button[2]"
    Then I wait for 2 sec
    Then element with xpath "//*[contains(text(), 'marinaAssignment')]" should not be present
    Then I click on element with xpath "//h5[contains(text(), 'Log Out')]"
    Then I click on element with xpath "//span[contains(text(), 'Log Out')]/.."
    And I wait for element with xpath "//img[@class='center-logo']" to be present
    Then MUJ element "Email field" should not contain text "student1ask@gmail.com"
    Then MUJ element "Password field" should not contain text "12345Abc"
    And I wait for 5 sec