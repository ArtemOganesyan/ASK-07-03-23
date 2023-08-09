#MinniP ASK Registration Feature File

@minnip_Registration
Feature: New user account registration in ASK

  @minnip_Registration1
  Scenario: New user account activation and user account deletion
    Given MP open url "http://ask-stage.portnov.com/#/registration"
    Then MP type "Hello" into element with xpath "//input[@formcontrolname='firstName']"
    Then MP type "Student" into element with xpath "//input[@formcontrolname='lastName']"
    Then MP type "hello_student@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then MP type "AAAAAA" into element with xpath "//input[@formcontrolname='group']"
    Then MP type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    Then MP type "12345Abc" into element with xpath "//input[@formcontrolname='confirmPassword']"
    And MP click on element with xpath "//button[@type='submit']"
    Then MP activate user with email "hello_student@gmail.com"
    Then MP element with xpath "//mat-card/h4" should contain text "You have been Registered."
    Then MP wait for element with xpath "//mat-icon[contains(text(), 'done')]" to be present
    Then MP click on element with xpath "//*[contains(text(), 'Back to Login Page')]/.."
    Then MP wait for element with xpath "//img[@class='center-logo']" to be present
    Then MP type "teacher_9@gmail.com" into "Email Field"
    Then MP type "12345Abc" into "Password Field"
    Then MP click on element with xpath "//span[contains(text(), 'Sign In')]/.."
    Then MP wait for element with xpath "//ac-side-menu/mat-list/header/div/p" to be present
    Then element with xpath "//ac-side-menu/mat-list/header/div/p" should contain text "TEACHER"
    Then MP click on element with xpath "//h4[contains(text(), 'Management')]"
    Then MP scroll to the element with xpath "//h4[contains(text(),'Hello Student')]" with offset 1
    Then MP click on element with xpath "//h4[contains(text(),'Hello Student')]"
    Then MP click on element with xpath "//mat-icon[contains(text(), 'settings')]/../../..//button"
    Then MP scroll to the element with xpath "//mat-icon[contains(text(), 'delete')]/.." with offset 1
    Then MP wait for element with xpath "//h1[contains(text(),'Confirmation')]" to be present
    Then MP element with xpath "//div[@class='mat-dialog-content']/p" should contain text "Are you sure"
    Then MP click on element with xpath "//span[contains(text(), 'Delete')]/.."
    Then MP wait for element with xpath "//h4[contains(text(), 'Management')]" to be present
    Then Mp element with xpath "//ac-users-list/..//h4" should not contain text "Hello Student"
    Then MP click on element with xpath "//h5[contains(text(),'Log Out')]"
    Then MP click on element with xpath "//ac-modal-confirmation/../..//button/..//*[contains(text(), 'Log Out')]"
    Then Mp element with xpath "//input[@formcontrolname='email']" should not contain text "teacher_9@gmail.com"
    Then Mp element with xpath "//input[@formcontrolname='password']" should not contain text "12345Abc"



  @minnip_Registration2
  Scenario Outline: New user account activation and user account deletion outline
    Given MP open url "http://ask-stage.portnov.com/#/registration"
    Then MP type "<firstName>" into element with xpath "//input[@formcontrolname='firstName']"
    Then MP type "Student" into element with xpath "//input[@formcontrolname='lastName']"
    Then MP type "<email>" into element with xpath "//input[@formcontrolname='email']"
    Then MP type "AAAAAA" into element with xpath "//input[@formcontrolname='group']"
    Then MP type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    Then MP type "12345Abc" into element with xpath "//input[@formcontrolname='confirmPassword']"
    And MP click on element with xpath "//button[@type='submit']"
    Then MP activate user with email "<email1>"
    Then MP element with xpath "//mat-card/h4" should contain text "You have been Registered."
    Then MP wait for element with xpath "//mat-icon[contains(text(), 'done')]" to be present
    Then MP click on element with xpath "//*[contains(text(), 'Back to Login Page')]/.."
    Then MP wait for element with xpath "//img[@class='center-logo']" to be present
    Then MP type "teacher_9@gmail.com" into "Email Field"
    Then MP type "12345Abc" into "Password Field"
    Then MP click on element with xpath "//span[contains(text(), 'Sign In')]/.."
    Then MP wait for element with xpath "//ac-side-menu/mat-list/header/div/p" to be present
    Then element with xpath "//ac-side-menu/mat-list/header/div/p" should contain text "TEACHER"
    Then MP click on element with xpath "//h4[contains(text(), 'Management')]"
    Then MP scroll to the element with xpath "<text1>" with offset 1
    Then MP click on element with xpath "<text2>"
    Then MP click on element with xpath "//mat-icon[contains(text(), 'settings')]/../../..//button"
    Then MP scroll to the element with xpath "//mat-icon[contains(text(), 'delete')]/.." with offset 1
    Then MP wait for element with xpath "//h1[contains(text(),'Confirmation')]" to be present
    Then MP element with xpath "//div[@class='mat-dialog-content']/p" should contain text "Are you sure"
    Then MP click on element with xpath "//span[contains(text(), 'Delete')]/.."
    Then MP wait for element with xpath "//h4[contains(text(), 'Management')]" to be present
    Then Mp element with xpath "//ac-users-list/..//h4" should not contain text "<name>"
    Then MP click on element with xpath "//h5[contains(text(),'Log Out')]"
    Then MP click on element with xpath "//ac-modal-confirmation/../..//button/..//*[contains(text(), 'Log Out')]"
    Then Mp element with xpath "//input[@formcontrolname='email']" should not contain text "teacher_9@gmail.com"
    Then Mp element with xpath "//input[@formcontrolname='password']" should not contain text "12345Abc"
    Examples:
      |firstName|email|email1|text1|text2|name|
      |Hello1|hello1_student@gmail.com|hello1_student@gmail.com|//h4[contains(text(), 'Hello1')]|//h4[contains(text(), 'Hello1')]|Hello1|
      |Hello2|hello2_student@gmail.com|hello2_student@gmail.com|//h4[contains(text(), 'Hello2')]|//h4[contains(text(), 'Hello2')]|Hello2|
      |Hello3|hello3_student@gmail.com|hello3_student@gmail.com|//h4[contains(text(), 'Hello3')]|//h4[contains(text(), 'Hello3')]|Hello3|
      |Hello4|hello4_student@gmail.com|hello4_student@gmail.com|//h4[contains(text(), 'Hello4')]|//h4[contains(text(), 'Hello4')]|Hello4|










