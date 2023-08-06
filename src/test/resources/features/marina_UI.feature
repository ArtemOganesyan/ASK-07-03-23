#good old scenarios here

@marina_UI
Feature: ASK UI validation

  @scenario_1
  Scenario: Student UI Validation
    Given I open url "http://ask-stage.portnov.com/"
    Then I should see page title as "Assessment Control @ Portnov"
    And element with xpath "//img[@class='center-logo']" should be present
    And element with xpath "//ac-login-page/mat-card/h3" should contain text "Assessment Control"
    Then element with xpath "//h3[contains(text(), 'Assessment Control')]/..//h5" should contain text "Portnov Computer School"
    Then element with xpath "//form/a" should contain text "I forgot my password"
    Then element with xpath "//*[contains(text(), 'Register Now')]/../..//button" should be present
    Then MUJ type "student0@gmail.com" into "Email field"
    Then I click on element with xpath "//span[contains(text(), 'Sign In')]/.."
    Then I wait for element with xpath "//*[contains(text(), 'This field is required')]" to be present
    Then MUJ type "12345Abc" into "Password field"
    Then I click on element with xpath "//span[contains(text(), 'Sign In')]/.."
    Then element with xpath "//ac-side-menu" should be present
    And I wait for element with xpath "//ac-side-menu/mat-list/header" to be present
    And I wait for 3 sec
    Then element with xpath "//ac-side-menu/mat-list/header/div/p" should contain text "STUDENT"
    Then element with xpath "//ac-home-student/mat-card[1]/h4" should contain text "Assignments"
    Then element with xpath "//ac-home-student/mat-card[2]/h4" should contain text "Grades"
    Then I click on element with xpath "//h5[contains(text(), 'My Assignments')]"
    Then element with xpath "//mat-card/h4" should contain text "My Assignments"
    Then I click on element with xpath "//h5[contains(text(), 'My Grades')]"
    Then element with xpath "//mat-card/h4" should contain text "My Grades"
    Then I click on element with xpath "//h5[contains(text(), 'Settings')]"
    Then element with xpath "//mat-card/h4" should contain text "Settings"
    Then element with xpath "//button/*[contains(text(), 'Change Your Name')]" should be present
    Then element with xpath "//button/*[contains(text(), 'Change Your Password')]" should be present
    Then I click on element with xpath "//h5[contains(text(), 'Home')]"
    Then element with xpath "//ac-home-student/mat-card[1]/h4" should contain text "Assignments"
    Then element with xpath "//ac-home-student/mat-card[2]/h4" should contain text "Grades"
    Then I click on element with xpath "//h5[contains(text(), 'Log Out')]"
    Then I wait for element with xpath "//h1[contains(text(), 'Confirmation')]" to be present
    Then element with xpath "//button/span[contains(text(), 'No, Thanks')]" should be present
    Then element with xpath "//button/span[contains(text(), 'Log Out')]" should be present
    Then I click on element with xpath "//ac-modal-confirmation/div[2]/button[2]"
    Then I should see page title as "Assessment Control @ Portnov"
    And I wait for element with xpath "//img[@class='center-logo']" to be present
    Then MUJ element "Email field" should not contain text "student0@gmail.com"
    Then MUJ element "Password field" should not contain text "12345Abc"


  @scenario_2
  Scenario Outline: Student UI Validation Outline
    Given I open url "http://ask-stage.portnov.com/"
    Then I should see page title as "Assessment Control @ Portnov"
    And element with xpath "//img[@class='center-logo']" should be present
    And element with xpath "//ac-login-page/mat-card/h3" should contain text "Assessment Control"
    Then element with xpath "//h3[contains(text(), 'Assessment Control')]/..//h5" should contain text "Portnov Computer School"
    Then element with xpath "//form/a" should contain text "I forgot my password"
    Then element with xpath "//*[contains(text(), 'Register Now')]/../..//button" should be present
    Then MUJ type "<email>" into "Email field"
    Then I click on element with xpath "//span[contains(text(), 'Sign In')]/.."
    Then element with xpath "//*[contains(text(), 'This field is required')]" should be present
    Then MUJ type "12345Abc" into "Password field"
    Then I click on element with xpath "//span[contains(text(), 'Sign In')]/.."
    Then element with xpath "//ac-side-menu" should be present
    And I wait for element with xpath "//ac-side-menu/mat-list/header" to be present
    And I wait for 3 sec
    Then element with xpath "//ac-side-menu/mat-list/header/div/p" should contain text "STUDENT"
    Then element with xpath "//ac-home-student/mat-card[1]/h4" should contain text "Assignments"
    Then element with xpath "//ac-home-student/mat-card[2]/h4" should contain text "Grades"
    Then I click on element with xpath "//h5[contains(text(), 'My Assignments')]"
    Then element with xpath "//mat-card/h4" should contain text "My Assignments"
    Then I click on element with xpath "//h5[contains(text(), 'My Grades')]"
    Then element with xpath "//mat-card/h4" should contain text "My Grades"
    Then I click on element with xpath "//h5[contains(text(), 'Settings')]"
    Then element with xpath "//mat-card/h4" should contain text "Settings"
    Then element with xpath "//button/*[contains(text(), 'Change Your Name')]" should be present
    Then element with xpath "//button/*[contains(text(), 'Change Your Password')]" should be present
    Then I click on element with xpath "//h5[contains(text(), 'Home')]"
    Then element with xpath "//ac-home-student/mat-card[1]/h4" should contain text "Assignments"
    Then element with xpath "//ac-home-student/mat-card[2]/h4" should contain text "Grades"
    Then I click on element with xpath "//h5[contains(text(), 'Log Out')]"
    Then I wait for element with xpath "//h1[contains(text(), 'Confirmation')]" to be present
    Then element with xpath "//button/span[contains(text(), 'No, Thanks')]" should be present
    Then element with xpath "//button/span[contains(text(), 'Log Out')]" should be present
    Then I click on element with xpath "//ac-modal-confirmation/div[2]/button[2]"
    Then I should see page title as "Assessment Control @ Portnov"
    And I wait for element with xpath "//img[@class='center-logo']" to be present
    Then MUJ element "Email field" should not contain text "<email1>"
    Then MUJ element "Password field" should not contain text "12345Abc"
    Examples:
      |email|email1|
      |student0@gmail.com|student0@gmail.com|
      |student1@gmail.com|student1@gmail.com|
      |student2@gmail.com|student2@gmail.com|
      |student4@gmail.com|student4@gmail.com|
      |student5@gmail.com|student5@gmail.com|
      |student6@gmail.com|student6@gmail.com|
      |student7@gmail.com|student7@gmail.com|
      |student8@gmail.com|student8@gmail.com|
      |student9@gmail.com|student9@gmail.com|
      |student10@gmail.com|student10@gmail.com|




