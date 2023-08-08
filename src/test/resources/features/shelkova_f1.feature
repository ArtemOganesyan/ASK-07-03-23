#Shelkova feature file
@shelkova_f1
  Feature: Log in to the page
    @feature1
    Scenario: Log in 
      Given I open url "http://ask-stage.portnov.com/#/login"
      Then I type "teacher@gmail.com" into element with xpath "//input[@formcontrolname='email']"
      Then I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
      And I click on element using JavaScript with xpath "//button[@type='submit']"
      And I wait for 1 sec

    @feature2
    Scenario: Create and delete the quiz
      Given I open url "http://ask-stage.portnov.com/#/login"
      Then SNV type "teacher@gmail.com" into "Email field"
      Then SNV type "12345Abc" into "Password field"
      And I click on element with xpath "//button[@type='submit']"
      And I wait for 1 sec
      Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
      Then I wait for element with xpath "//span[contains(text(),'Create New Quiz')]" to be present
      Then I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
      And I wait for 1 sec
      Then SNV type "New Quiz Natalia" as quiz title
      Then I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      When SNV select "Textual" question type
      And I wait for 1 sec
      Then I click on element with xpath "//mat-panel-title[contains(text(), 'Q1')]/../../..//mat-radio-button[1]"
      And I wait for 1 sec
      Then I type "Question 1" into element with xpath "//textarea[@formcontrolname='question']"
      Then SNV move slider with xpath "//*[contains(text(), 'Q1')]/../../..//mat-slider"
      And I wait for 1 sec
      Then SNV move slider with xpath "//*[contains(text(), 'Q1')]/../../..//mat-slider" to the "right" for 5 steps
      And I wait for 1 sec
      Then I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      Then I click on element with xpath "//mat-panel-title[contains(text(), 'Q2')]/../../..//mat-radio-button[2]"
      And I wait for 1 sec
      Then I type "Question 2" into element with xpath "//mat-panel-title[contains(text(), 'Q2')]/../../..//textarea"
      And I wait for 1 sec
      Then I type "Option 1" into element with xpath "//mat-panel-title[contains(text(), 'Q2')]/../../..//textarea[@placeholder='Option 1*']"
      Then I type "Option 2" into element with xpath "//mat-panel-title[contains(text(), 'Q2')]/../../..//textarea[@placeholder='Option 2*']"
      Then I click on element with xpath "//textarea[@placeholder='Option 2*']/../../../../..//mat-radio-button"
      And I wait for 1 sec
      Then I click on element with xpath "//span[contains(text(),'Save')]/.."
      Then I wait for 1 sec
      And I wait for element with xpath "//ac-quizzes-list" to be present
      And I wait for element with xpath "//mat-accordion/.. //mat-panel-title[contains(text(), 'New Quiz Natalia')]" to be present
      And I wait for 1 sec
      Then I delete "New Quiz Natalia" from the list of quizzes

    @feature3
    Scenario: Verify system allows to register with Alphanumeric & Special char in email field
      Given I open url "http://ask-stage.portnov.com/#/login"
      Then I click on element with xpath "//span[contains(text(),'Register Now')]"
      And I wait for 1 sec
      Then I type "Jack" into element with xpath "//input[@formcontrolname='firstName']"
      Then I type "Tester" into element with xpath "//input[@formcontrolname='lastName']"
      Then I type "student#123.abc@gmail.com" into element with xpath "//input[@formcontrolname='email']"
      Then I type "ABC" into element with xpath "//input[@formcontrolname='group']"
      Then I type "password" into element with xpath "//input[@formcontrolname='password']"
      Then I type "password" into element with xpath "//input[@formcontrolname='confirmPassword']"
      Then I click on element with xpath "//span[contains(text(),'Register Me')]"
        
      Scenario: Verify Email field marked as required
        Given I open url "http://ask-stage.portnov.com/#/login"
        Then I click on element with xpath "//span[contains(text(),'Register Now')]"
        And I wait for 1 sec
        Then I click on element with xpath "//input[@formcontrolname='email']"
        And I click on element with xpath "//input[@formcontrolname='group']"
        Then SNV verify error message with xpath "//mat-error[contains(text(),'This field is required')]"
        
      Scenario: Verify Email field can't be empty
        Given I open url "http://ask-stage.portnov.com/#/login"
        Then I click on element with xpath "//span[contains(text(),'Register Now')]"
        And I wait for 1 sec
        Then I type "Jack" into element with xpath "//input[@formcontrolname='firstName']"
        Then I type "Tester" into element with xpath "//input[@formcontrolname='lastName']"
        Then I type "" into element with xpath "//input[@formcontrolname='email']"
        Then I type "ABC" into element with xpath "//input[@formcontrolname='group']"
        Then I type "password" into element with xpath "//input[@formcontrolname='password']"
        Then I type "password" into element with xpath "//input[@formcontrolname='confirmPassword']"
        Then I click on element with xpath "//span[contains(text(),'Register Me')]"
        Then SNV verify error message with xpath "//mat-error[contains(text(),'This field is required')]"

      Scenario: Verify white spaces are not allowed when entering email
        Given I open url "http://ask-stage.portnov.com/#/login"
        Then I click on element with xpath "//span[contains(text(),'Register Now')]"
        And I wait for 1 sec
        Then I type "Jack" into element with xpath "//input[@formcontrolname='firstName']"
        Then I type "Tester" into element with xpath "//input[@formcontrolname='lastName']"
        Then I type "student 123 @gmail.com" into element with xpath "//input[@formcontrolname='email']"
        Then I type "ABC" into element with xpath "//input[@formcontrolname='group']"
        Then I type "password" into element with xpath "//input[@formcontrolname='password']"
        Then I type "password" into element with xpath "//input[@formcontrolname='confirmPassword']"
        Then I click on element with xpath "//span[contains(text(),'Register Me')]"
        Then SNV verify error message with xpath "//mat-error[contains(text(),'Should be a valid email address')]"

      Scenario: Email field allow Max 128 characters
        Given I open url "http://ask-stage.portnov.com/#/login"
        Then I click on element with xpath "//span[contains(text(),'Register Now')]"
        And I wait for 1 sec
        Then I type "Jack" into element with xpath "//input[@formcontrolname='firstName']"
        Then I type "Tester" into element with xpath "//input[@formcontrolname='lastName']"
        Then I type "student12345student12345student12345student12345student12345student12345student12345student12345student12345student12345student12345@gmail.com" into element with xpath "//input[@formcontrolname='email']"
        Then I type "ABC" into element with xpath "//input[@formcontrolname='group']"
        Then I type "password" into element with xpath "//input[@formcontrolname='password']"
        Then I type "password" into element with xpath "//input[@formcontrolname='confirmPassword']"
        Then I click on element with xpath "//span[contains(text(),'Register Me')]"
        And I wait for 1 sec

      Scenario: Verify user can register with valid email
        Given I open url "http://ask-stage.portnov.com/#/login"
        Then I click on element with xpath "//span[contains(text(),'Register Now')]"
        And I wait for 1 sec
        Then I type "Jack" into element with xpath "//input[@formcontrolname='firstName']"
        Then I type "Tester" into element with xpath "//input[@formcontrolname='lastName']"
        Then I type "JackTester@gmail.com" into element with xpath "//input[@formcontrolname='email']"
        Then I type "ABC" into element with xpath "//input[@formcontrolname='group']"
        Then I type "password" into element with xpath "//input[@formcontrolname='password']"
        Then I type "password" into element with xpath "//input[@formcontrolname='confirmPassword']"
        Then I click on element with xpath "//span[contains(text(),'Register Me')]"
        And I wait for 1 sec
        
      Scenario: Verify user can't register with invalid email
        Given I open url "http://ask-stage.portnov.com/#/login"
        Then I click on element with xpath "//span[contains(text(),'Register Now')]"
        And I wait for 1 sec
        Then I type "Jack" into element with xpath "//input[@formcontrolname='firstName']"
        Then I type "Tester" into element with xpath "//input[@formcontrolname='lastName']"
        Then I type "JackTester" into element with xpath "//input[@formcontrolname='email']"
        Then I type "ABC" into element with xpath "//input[@formcontrolname='group']"
        Then I type "password" into element with xpath "//input[@formcontrolname='password']"
        Then I type "password" into element with xpath "//input[@formcontrolname='confirmPassword']"
        Then I click on element with xpath "//span[contains(text(),'Register Me')]"
        Then SNV verify error message with xpath "//mat-error[contains(text(),'Should be a valid email address')]"
        
        

        
        



      




      
     


   
      