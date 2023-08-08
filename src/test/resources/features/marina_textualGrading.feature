#commenting like nobody's business

@marina_textualGrading
Feature: ASK Grading Textual Question

  @mar_gradText_1
  Scenario: Grading Quiz with textual showstopper question
    Given I open url "http://ask-stage.portnov.com/"
    Then I should see page title as "Assessment Control @ Portnov"
    And element with xpath "//img[@class='center-logo']" should be present
    Then MUJ type "student1ask@gmail.com" into "Email field"
    Then MUJ type "12345Abc" into "Password field"
    Then I click on element with xpath "//span[contains(text(), 'Sign In')]/.."
    And I wait for element with xpath "//ac-side-menu/mat-list/header" to be present
    And I wait for 3 sec
    Then element with xpath "//ac-side-menu/mat-list/header/div/p" should contain text "TEACHER"
    Then I click on element with xpath "//h5[contains(text(), 'Quizzes')]"
    Then I wait for element with xpath "//mat-card/h4" to be present
    Then element with xpath "//mat-card/h4" should contain text "List of Quizzes"
    Then I click on element with xpath "//*[contains(text(), 'Create New Quiz')]/.."
    Then I wait for element with xpath "//input[@formcontrolname='name']" to be present
    Then I type "Test Textual Auto" into element with xpath "//input[@formcontrolname='name']"
    Then I click on element with xpath "//mat-icon[contains(text(), 'add_circle')]/../.."
    Then I click on element with xpath "//*[contains(text(), 'Q1')]/../../..//mat-radio-button[1]"
    Then MUJ move slider with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../../..//mat-slider" to the "right" for 4 steps
    And I wait for element with xpath "//*[contains(text(), 'Q1')]/../../..//textarea" to be present
    And I wait for 5 sec
    Then I type "What is Cookies?" into element with xpath "//*[contains(text(), 'Q1')]/../../..//textarea"
    Then I click on element with xpath "//*[contains(text(), 'Q1')]/../../..//mat-checkbox"
    Then I click on element with xpath "//mat-icon[contains(text(), 'add_circle')]/../.."
    And I wait for element with xpath "//*[contains(text(), 'Q2')]/../../..//mat-radio-button[2]" to be present
    Then I click on element with xpath "//*[contains(text(), 'Q2')]/../../..//mat-radio-button[2]"
    Then MUJ move slider with xpath "//mat-panel-title[contains(text(), 'Q2')]/../../..//mat-slider" to the "left" for 1 steps
    And I wait for 2 sec
    Then I type "What is the purpose of test completion criteria in a test plan?" into element with xpath "//*[contains(text(), 'Q2')]/../../..//textarea[@formcontrolname='question']"
    Then I type "to ensure that the test case specification is complete" into element with xpath "//*[contains(text(), 'Q2')]/../../..//textarea[@placeholder='Option 1*']"
    Then I type "to plan when to stop testing" into element with xpath "//*[contains(text(), 'Q2')]/../../..//textarea[@placeholder='Option 2*']"
    Then I click on element with xpath "//*[contains(text(), 'Add Option')]/.."
    Then I type "to find happiness in life" into element with xpath "//*[contains(text(), 'Q2')]/../../..//textarea[@placeholder='Option 3*']"
    Then I click on element with xpath "//*[contains(text(), 'Option 1*')]/../../../../../..//mat-radio-button"
    Then I click on element with xpath "//mat-icon[contains(text(), 'add_circle')]/../.."
    Then I click on element with xpath "//*[contains(text(), 'Q3')]/../../..//mat-radio-button[3]"
    Then MUJ move slider with xpath "//mat-panel-title[contains(text(), 'Q3')]/../../..//mat-slider" to the "right" for 1 steps
    And I wait for element with xpath "//*[contains(text(), 'Q3')]/../../..//textarea[@formcontrolname='question']" to be present
    And I wait for 3 sec
    Then I type "What are the components of bug report?" into element with xpath "//*[contains(text(), 'Q3')]/../../..//textarea[@formcontrolname='question']"
    Then I type "Status" into element with xpath "//*[contains(text(), 'Q3')]/../../..//textarea[@placeholder='Option 1*']"
    Then I type "Test data" into element with xpath "//*[contains(text(), 'Q3')]/../../..//textarea[@placeholder='Option 2*']"
    Then I click on element with xpath "//*[contains(text(), 'Option 1*')]/../../../../../..//mat-checkbox"
    Then element with xpath "//mat-card/h3" should contain text "Passing Rate"
    Then element with xpath "//mat-card/h1" should contain text "75%"
    Then element with xpath "//mat-card/h5" should contain text "15 of 20 Points"
    Then I click on element with xpath "//*[contains(text(), 'Save')]/.."
    Then I wait for element with xpath "//h4[contains(text(), 'List of Quizzes')]" to be present
    Then I wait for element with xpath "//*[contains(text(), 'Test Textual Auto')]" to be present
    Then I click on element with xpath "//h5[contains(text(), 'Assignments')]"
    Then I wait for element with xpath "//*[contains(text(), 'Create New Assignment')]/.." to be present
    Then I click on element with xpath "//*[contains(text(), 'Create New Assignment')]/.."
    Then I click on element with xpath "//mat-select[@formcontrolname='quizId']"
    And I scroll to the element with xpath "//*[contains(text(), 'Test Textual Auto')]/.." with offset 1
    Then I click on element with xpath "//*[contains(text(), 'Test Textual Auto')]/.."
    And I scroll to the element with xpath "//*[contains(text(), 'Auto')]/../..//mat-pseudo-checkbox" with offset 1
    Then I click on element with xpath "//*[contains(text(), 'Auto')]/../..//mat-pseudo-checkbox"
    Then element with xpath "//form/div/h5" should contain text "Total Selected Students: 1"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//*[contains(text(), 'Test Textual Auto')]" to be present
    Then I click on element with xpath "//h5[contains(text(), 'Log Out')]"
    Then I click on element with xpath "//span[contains(text(), 'Log Out')]/.."
    And I wait for element with xpath "//img[@class='center-logo']" to be present
    Then element with xpath "//button/..//span[contains(text(), 'Sign In')]" should be displayed
    Then MUJ element "Email field" should not contain text "student1ask@gmail.com"
    Then MUJ element "Password field" should not contain text "12345Abc"

  @mar_gradText_2
  Scenario: Student Submits Answers
    Given I open url "http://ask-stage.portnov.com/"
    Then I should see page title as "Assessment Control @ Portnov"
    And element with xpath "//img[@class='center-logo']" should be present
    And element with xpath "//ac-login-page/mat-card/h3" should contain text "Assessment Control"
    Then MUJ type "student0@gmail.com" into "Email field"
    Then MUJ type "12345Abc" into "Password field"
    Then I click on element with xpath "//span[contains(text(), 'Sign In')]/.."
    Then element with xpath "//ac-side-menu" should be present
    And I wait for element with xpath "//ac-side-menu/mat-list/header" to be present
    Then I wait for element with xpath "//p[contains(text(), 'STUDENT')]" to be present
    Then element with xpath "//ac-side-menu/mat-list/header/div/p" should contain text "Student"
    Then I click on element with xpath "//*[contains(text(), 'Go To My Assignments')]/.."
    Then I wait for element with xpath "//td[contains(text(), 'Test Textual Auto')]" to be present
    Then I wait for element with xpath "//*[contains(text(), 'Go To Assessment')]/.." to be present
    And I wait for 2 sec
    Then I click on element with xpath "//*[contains(text(), 'Go To Assessment')]/.."
    Then I wait for element with xpath "//ac-take-quiz" to be present
    Then element with xpath "//*[contains(text(), '1 / 3')]/..//p" should contain text "Show-Stopper Question"
    Then I type "A cookie is a piece of data from a website that is stored within a web browser that the website can retrieve at a later time. " into element with xpath "//*[contains(text(), '1 / 3')]/..//textarea"
    Then I click on element with xpath "//*[contains(text(), '2 / 3')]/..//mat-radio-button[1]/label/div/div[@class='mat-radio-inner-circle']"
    Then I click on element with xpath "//ac-quiz-multiple-choice-question/div/mat-checkbox[1]/label/div[@class='mat-checkbox-inner-container']"
    Then I click on element with xpath "//*[contains(text(), 'Submit My Answers')]"
    And I wait for element with xpath "//ac-modal-notification/h1" to be present
    Then element with xpath "//ac-modal-notification/h1" should contain text "Success!"
    Then element with xpath "//ac-modal-notification/div/p" should contain text "Your submission has been accepted."
    Then I click on element with xpath "//*[contains(text(), 'Ok')]/.."
    Then I wait for element with xpath "//mat-card/div" to be present
    Then element with xpath "//mat-card/div" should contain text "You do not have any assignments at this moment"
    Then I click on element with xpath "//h5[contains(text(), 'My Grades')]"
    Then element with xpath "//h4[contains(text(), 'My Grades')]" should be present
    Then element with xpath "//td[@class='quiz-name']" should contain text "Test Textual Auto"
    Then element with xpath "//span[@class='pending']" should contain text "PENDING"
    Then I click on element with xpath "//h5[contains(text(), 'Log Out')]"
    Then I click on element with xpath "//span[contains(text(), 'Log Out')]/.."
    And I wait for element with xpath "//img[@class='center-logo']" to be present
    Then MUJ element "Email field" should not contain text "student0@gmail.com"
    Then MUJ element "Password field" should not contain text "12345Abc"
    Then I wait for 2 sec

  @mar_gradText_3
  Scenario: Teacher Grading the Textual Quiz Submission
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
    Then element with xpath "//td[contains(text(), 'Test Textual Auto')]" should be present
    Then I wait for element with xpath "//td[contains(text(), 'Test Textual Auto')]/..//button" to be present
    And I wait for 2 sec
    Then I click on element with xpath "//td[contains(text(), 'Test Textual Auto')]/..//button"
    Then I wait for element with xpath "//ac-grade-form" to be present
    Then element with xpath "//td[@class='bold quiz-name']" should contain text "Test Textual Auto"
    Then element with xpath "//td[contains(text(), 'Passing points / percentage:')]/..//td[@class='bold']" should contain text "15 of 20 / 75%"
    Then element with xpath "//td[contains(text(), 'Actual points / percentage:')]/..//td[@class='bold']" should contain text "10 of 20 / 50%"
    Then element with xpath "//div[@class='result']//div[1]" should contain text "ASSESSMENT FAILED"
    Then element with xpath "//div[@class='result']//div[2]" should contain text "failed show-stopper*"
    Then I click on element with xpath "//*[contains(text(), '1 of 3')]/../..//button[2]"
    Then I click on element with xpath "//*[contains(text(), '1 of 3')]/../..//button[2]"
    Then I click on element with xpath "//*[contains(text(), '1 of 3')]/../..//button[2]"
    Then I click on element with xpath "//*[contains(text(), '1 of 3')]/../..//button[2]"
    Then I click on element with xpath "//*[contains(text(), '1 of 3')]/../..//button[2]"
    Then I click on element with xpath "//*[contains(text(), '1 of 3')]/../..//button[2]"
    Then I click on element with xpath "//*[contains(text(), '1 of 3')]/../..//button[2]"
    Then I click on element with xpath "//*[contains(text(), '1 of 3')]/../..//button[2]"
    Then I click on element with xpath "//*[contains(text(), '1 of 3')]/../..//button[2]"
    Then I click on element with xpath "//*[contains(text(), '1 of 3')]/../..//button[2]"
    Then element with xpath "//div[@class='result']//div[1]" should contain text "ASSESSMENT PASSED"
    Then element with xpath "//td[contains(text(), 'Actual points / percentage:')]/..//td[@class='bold']" should contain text "20 of 20 / 100%"
    Then I type "Great" into element with xpath "//*[contains(text(), '1 of 3')]/../..//textarea"
    Then I type "Wonderful" into element with xpath "//*[contains(text(), '2 of 3')]/../..//textarea"
    Then I type "Amazing" into element with xpath "//*[contains(text(), '3 of 3')]/../..//textarea"
    Then I type "Great job!" into element with xpath "//textarea[@formcontrolname='summary']"
    Then I click on element with xpath "//*[contains(text(), 'Save')]/.."
    Then I wait for element with xpath "//h4[contains(text(), 'Submissions')]" to be present
    Then element with xpath "//td[contains(text(), 'Test Textual Auto')]" should not be present
    Then I click on element with xpath "//div[contains(text(), 'Reviewed')]"
    Then I wait for element with xpath "//td[contains(text(), 'Test Textual Auto')]" to be present
    And I wait for 2 sec
    Then element with xpath "//td[contains(text(), 'Test Textual Auto')]/..//span[contains(text(), 'PASSED')]" should contain text "PASSED"
    Then I click on element with xpath "//h5[contains(text(), 'Log Out')]"
    Then I click on element with xpath "//span[contains(text(), 'Log Out')]/.."
    And I wait for element with xpath "//img[@class='center-logo']" to be present
    Then MUJ element "Email field" should not contain text "student1ask@gmail.com"
    Then MUJ element "Password field" should not contain text "12345Abc"
    Then I wait for 2 sec


  @mar_gradText_4
  Scenario: Student Can view graded Textual Auto Assignment
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
    And I wait for element with xpath "//td[@class='quiz-name']" to be present
    Then element with xpath "//td[@class='quiz-name']" should contain text "Test Textual Auto"
    And I wait for 2 sec
    Then I wait for element with xpath "//ac-student-grades-page/mat-card/div/table/tbody/tr/td/a/button" to be present
    Then I click on element with xpath "//ac-student-grades-page/mat-card/div/table/tbody/tr/td/a/button"
    Then element with xpath "//td[@class='bold quiz-name']" should contain text "Test Textual Auto"
    Then element with xpath "//td[contains(text(), 'Actual points')]/..//td[@class='bold']" should contain text "20 of 20 / 100%"
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

  @mar_gradText_5
  Scenario: Teacher Deletes the Textual Auto Quiz and Assignment
    Given I open url "http://ask-stage.portnov.com/"
    Then I should see page title as "Assessment Control @ Portnov"
    And element with xpath "//img[@class='center-logo']" should be present
    Then MUJ type "student1ask@gmail.com" into "Email field"
    Then MUJ type "12345Abc" into "Password field"
    Then I click on element with xpath "//span[contains(text(), 'Sign In')]/.."
    And I wait for element with xpath "//ac-side-menu/mat-list/header/div/p" to be present
    And I wait for 3 sec
    Then element with xpath "//ac-side-menu/mat-list/header/div/p" should contain text "TEACHER"
    Then I click on element with xpath "//h5[contains(text(), 'Quizzes')]"
    Then I wait for element with xpath "//h4[contains(text(), 'List of Quizzes')]" to be present
    Then I scroll to the element with xpath "//mat-panel-title[contains(text(), 'Test Textual Auto')]" with offset 1
    Then element with xpath "//mat-panel-title[contains(text(), 'Test Textual Auto')]" should be present
    Then I click on element with xpath "//mat-panel-title[contains(text(), 'Test Textual Auto')]/..//mat-panel-description"
    Then I wait for element with xpath "//mat-panel-title[contains(text(), 'Test Textual Auto')]/../../..//span[contains(text(), 'Delete')]/.." to be present
    Then I click on element with xpath "//mat-panel-title[contains(text(), 'Test Textual Auto')]/../../..//span[contains(text(), 'Delete')]/.."
    And I wait for element with xpath "//ac-modal-confirmation/div/button[2]" to be present
    Then I click on element with xpath "//ac-modal-confirmation/div/button[2]"
    And I wait for 2 sec
    Then I wait for element with xpath "//h4[contains(text(), 'List of Quizzes')]" to be present
    Then element with xpath "//mat-panel-title[contains(text(), 'Test Textual Auto')]" should not be present
    Then I click on element with xpath "//h5[contains(text(), 'Assignments')]"
    Then I wait for element with xpath "//h4[contains(text(), 'List of Assignments')]" to be present
    Then I scroll to the element with xpath "//*[contains(text(), 'Test Textual Auto')]" with offset 1
    Then I wait for element with xpath "//*[contains(text(), 'Test Textual Auto')]/../..//mat-icon[contains(text(), 'more_vert')]" to be present
    And I wait for 2 sec
    Then I click on element with xpath "//*[contains(text(), 'Test Textual Auto')]/../..//mat-icon[contains(text(), 'more_vert')]"
    Then I wait for element with xpath "//div[@class='cdk-overlay-pane']/div/div/button" to be present
    And I wait for 1 sec
    Then I click on element with xpath "//div[@class='cdk-overlay-pane']/div/div/button"
    Then I wait for element with xpath "//ac-modal-confirmation/div/button[2]" to be present
    Then I click on element with xpath "//ac-modal-confirmation/div/button[2]"
    Then I wait for 5 sec
    Then element with xpath "//*[contains(text(), 'Test Textual Auto')]" should not be present
    Then I click on element with xpath "//h5[contains(text(), 'Log Out')]"
    Then I click on element with xpath "//span[contains(text(), 'Log Out')]/.."
    And I wait for element with xpath "//img[@class='center-logo']" to be present
    Then MUJ element "Email field" should not contain text "student1ask@gmail.com"
    Then MUJ element "Password field" should not contain text "12345Abc"
    And I wait for 5 sec




