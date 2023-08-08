#comment about registration

@marina_registration
Feature: New user registration then teacher deletes it

  @mar_reg_1
  Scenario: User activation then Teacher deletes the User
    Given I open url "http://ask-stage.portnov.com/#/registration"
    Then I type "Eliminate" into element with xpath "//input[@formcontrolname='firstName']"
    Then I type "Me" into element with xpath "//input[@formcontrolname='lastName']"
    Then I type "eliminate@email.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "ABC" into element with xpath "//input[@formcontrolname='group']"
    Then I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    Then I type "12345Abc" into element with xpath "//input[@formcontrolname='confirmPassword']"
    And I click on element with xpath "//button[@type='submit']"
    Then MUJ activate user with email "eliminate@email.com"
    And I wait for 4 sec
    Then element with xpath "//mat-card/h4" should contain text "You have been Registered."
    Then element with xpath "//mat-icon[contains(text(), 'done')]" should be present
    Then I click on element with xpath "//*[contains(text(), 'Back to Login Page')]/.."
    Then I wait for element with xpath "//img[@class='center-logo']" to be present
    Then MUJ type "student1ask@gmail.com" into "Email field"
    Then MUJ type "12345Abc" into "Password field"
    Then I click on element with xpath "//span[contains(text(), 'Sign In')]/.."
    And I wait for element with xpath "//ac-side-menu/mat-list/header/div/p" to be present
    And I wait for 3 sec
    Then element with xpath "//ac-side-menu/mat-list/header/div/p" should contain text "TEACHER"
    Then I click on element with xpath "//h5[contains(text(), 'Management')]"
    Then I scroll to the element with xpath "//h4[contains(text(), 'Eliminate')]" with offset 1
    Then I click on element with xpath "//h4[contains(text(), 'Eliminate')]"
    Then I click on element with xpath "//mat-icon[contains(text(), 'settings')]/../../..//button"
    Then I scroll to the element with xpath "//mat-icon[contains(text(), 'delete')]/.." with offset 1
    Then I click on element with xpath "//mat-icon[contains(text(), 'delete')]/.."
    And I wait for element with xpath "//span[contains(text(), 'Delete')]/.." to be present
    And I wait for 3 sec
    Then element with xpath "//div[@class='mat-dialog-content']/p" should contain text "Are you sure"
    Then I click on element with xpath "//span[contains(text(), 'Delete')]/.."
    Then I wait for element with xpath "//h4[contains(text(), 'Management')]" to be present
    Then element with xpath "//ac-users-list/..//h4" should not contain text "Eliminate"
    Then I click on element with xpath "//h5[contains(text(),'Log Out')]"
    Then I click on element with xpath "//ac-modal-confirmation/../..//button/..//*[contains(text(), 'Log Out')]"
    And I wait for element with xpath "//ac-login-page/../..//h3" to be present
    Then element with xpath "//ac-login-page/../..//h3" should contain text "Assessment Control"
    Then element with xpath "//ac-login-page/../..//h5" should contain text "Portnov Computer School"
    Then element with xpath "//img[@class='center-logo']" should be displayed
    Then element with xpath "//button/..//span[contains(text(), 'Sign In')]" should be displayed
    Then MUJ element "Email field" should not contain text "student1ask@gmail.com"
    Then MUJ element "Password field" should not contain text "12345Abc"


  @mar_reg_2
  Scenario Outline: User activation then Teacher deletes the User Outline
    Given I open url "http://ask-stage.portnov.com/#/registration"
    Then I type "<name>" into element with xpath "//input[@formcontrolname='firstName']"
    Then I type "Me" into element with xpath "//input[@formcontrolname='lastName']"
    Then I type "<email>" into element with xpath "//input[@formcontrolname='email']"
    Then I type "ABC" into element with xpath "//input[@formcontrolname='group']"
    Then I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    Then I type "12345Abc" into element with xpath "//input[@formcontrolname='confirmPassword']"
    And I click on element with xpath "//button[@type='submit']"
    Then MUJ activate user with email "<email1>"
    And I wait for element with xpath "//mat-card/h4" to be present
    And I wait for 4 sec
    Then element with xpath "//mat-card/h4" should contain text "You have been Registered."
    Then element with xpath "//mat-icon[contains(text(), 'done')]" should be present
    Then I click on element with xpath "//*[contains(text(), 'Back to Login Page')]/.."
    Then I wait for element with xpath "//img[@class='center-logo']" to be present
    Then MUJ type "student1ask@gmail.com" into "Email field"
    Then MUJ type "12345Abc" into "Password field"
    Then I click on element with xpath "//span[contains(text(), 'Sign In')]/.."
    And I wait for element with xpath "//ac-side-menu/mat-list/header/div/p" to be present
    And I wait for 3 sec
    Then element with xpath "//ac-side-menu/mat-list/header/div/p" should contain text "TEACHER"
    Then I click on element with xpath "//h5[contains(text(), 'Management')]"
    Then I scroll to the element with xpath "<field1>" with offset 1
    Then I click on element with xpath "<field2>"
    Then I click on element with xpath "//mat-icon[contains(text(), 'settings')]/../../..//button"
    Then I scroll to the element with xpath "//mat-icon[contains(text(), 'delete')]/.." with offset 1
    Then I click on element with xpath "//mat-icon[contains(text(), 'delete')]/.."
    And I wait for element with xpath "//span[contains(text(), 'Delete')]/.." to be present
    Then I click on element with xpath "//span[contains(text(), 'Delete')]/.."
    Then I wait for element with xpath "//h4[contains(text(), 'Management')]" to be present
    Then element with xpath "//ac-users-list/..//h4" should not contain text "<name2>"
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
      |name|email|email1|field1|field2|name2|
      |Eliminateone|eliminate1@email.com|eliminate1@email.com|//h4[contains(text(), 'Eliminate')]|//h4[contains(text(), 'Eliminate')]|Eliminateone|
      |Eliminatetwo|eliminate2@email.com|eliminate2@email.com|//h4[contains(text(), 'Eliminatetwo')]|//h4[contains(text(), 'Eliminatetwo')]|Eliminatetwo|
      |Eliminatethree|eliminate3@email.com|eliminate3@email.com|//h4[contains(text(), 'Eliminatethree')]|//h4[contains(text(), 'Eliminatethree')]|Eliminatethree|
      |Eliminatefour|eliminate4@email.com|eliminate4@email.com|//h4[contains(text(), 'Eliminatefour')]|//h4[contains(text(), 'Eliminatefour')]|Eliminatefour|
      |Eliminatefive|eliminate5@email.com|eliminate5@email.com|//h4[contains(text(), 'Eliminatefive')]|//h4[contains(text(), 'Eliminatefive')]|Eliminatefive|
      |Eliminatesix|eliminate6@email.com|eliminate6@email.com|//h4[contains(text(), 'Eliminatesix')]|//h4[contains(text(), 'Eliminatesix')]|Eliminatesix|
      |Eliminateseven|eliminate7@email.com|eliminate7@email.com|//h4[contains(text(), 'Eliminateseven')]|//h4[contains(text(), 'Eliminateseven')]|Eliminateseven|
      |Eliminateeight|eliminate8@email.com|eliminate8@email.com|//h4[contains(text(), 'Eliminateeight')]|//h4[contains(text(), 'Eliminateeight')]|Eliminateeight|
      |Eliminatenine|eliminate9@email.com|eliminate9@email.com|//h4[contains(text(), 'Eliminatenine')]|//h4[contains(text(), 'Eliminatenine')]|Eliminatenine|
      |Eliminateten|eliminate10@email.com|eliminate10@email.com|//h4[contains(text(), 'Eliminateten')]|//h4[contains(text(), 'Eliminateten')]|Eliminateten|
      |Eliminateeleven|eliminate11@email.com|eliminate11@email.com|//h4[contains(text(), 'Eliminateeleven')]|//h4[contains(text(), 'Eliminateeleven')]|Eliminateeleven|
      |Eliminatetwelve|eliminate12@email.com|eliminate12@email.com|//h4[contains(text(), 'Eliminatetwelve')]|//h4[contains(text(), 'Eliminatetwelve')]|Eliminatetwelve|
      |Eliminatethirteen|eliminate13@email.com|eliminate13@email.com|//h4[contains(text(), 'Eliminatethirteen')]|//h4[contains(text(), 'Eliminatethirteen')]|Eliminatethirteen|
      |Eliminatefourteen|eliminate14@email.com|eliminate14@email.com|//h4[contains(text(), 'Eliminatefourteen')]|//h4[contains(text(), 'Eliminatefourteen')]|Eliminatefourteen|
      |Eliminatefifteen|eliminate15@email.com|eliminate15@email.com|//h4[contains(text(), 'Eliminatefifteen')]|//h4[contains(text(), 'Eliminatefifteen')]|Eliminatefifteen|
