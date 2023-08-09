@karanFunctional1
Feature:Functional testing

  @scenario1_karanFunctional1
  Scenario: Teacher change the name
    Given I open url "http://ask-stage.portnov.com/#/login"
    Then I type "student1ask@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//h5[contains(text(),'Settings')]" to be present
    Then I click on element with xpath "//h5[contains(text(),'Settings')]"
    Then element with xpath "//button//span[contains(text(),'Change Your Name')]" should be present
    Then I click on element with xpath "//button//span[contains(text(),'Change Your Name')]"
    Then I wait for element with xpath "//h1[@class='mat-dialog-title']/../.." to be present
    Then I clear element with xpath "//input[@formcontrolname='name']"
    Then I type "TeacherEleven " into element with xpath "//input[@formcontrolname='name']"
    Then I click on element with xpath "//body/div[2]/div[2]/div[1]/mat-dialog-container[1]/ac-modal-adjust-user[1]/form[1]/div[2]/button[2]/span[1]"
    Then I wait for element with xpath "//td[contains(text(),'TeacherEleven')]/../../../../.." to be present
    Then element with xpath "//td[contains(text(),'TeacherEleven')]/../../../../.." should contain text "TeacherEleven"


  @scenario2_karanFunctional1
  Scenario: Teacher change the password
    Given I open url "http://ask-stage.portnov.com/#/login"
    Then I type "student1ask@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//h5[contains(text(),'Settings')]" to be present
    Then I click on element with xpath "//h5[contains(text(),'Settings')]"
    Then element with xpath "//button//span[contains(text(),'Change Your Password')]" should be present
    Then I click on element with xpath "//button//span[contains(text(),'Change Your Password')]"
    Then Karan type "12345Abc" into "Password field"
    Then Karan type "123456Abc" into "New Password field"
    Then Karan type "123456Abc" into "Confirm Password field"
    Then I click on element with xpath "//body/div[2]/div[2]/div[1]/mat-dialog-container[1]/ac-modal-change-password[1]/form[1]/div[2]/button[2]/span[1]"
    Then I click on element with xpath "//h5[contains(text(),'Log Out')]"
    Then element with xpath "//h1[contains(text(),'Confirmation')]" should be present
    Then I click on element with xpath "//button//span[contains(text(),'Log Out')]"
    Then I wait for element with xpath "//h3[contains(text(),'Assessment Control')]" to be present
    Then I type "student1ask@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "123456Abc" into element with xpath "//input[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//h5[contains(text(),'Settings')]" to be present
    Then I click on element with xpath "//h5[contains(text(),'Settings')]"
    Then element with xpath "//button//span[contains(text(),'Change Your Password')]" should be present
    Then I click on element with xpath "//button//span[contains(text(),'Change Your Password')]"
    Then Karan type "123456Abc" into "Password field"
    Then Karan type "12345Abc" into "New Password field"
    Then Karan type "12345Abc" into "Confirm Password field"
    Then I wait for 1 sec
    Then I click on element with xpath "//body/div[2]/div[2]/div[1]/mat-dialog-container[1]/ac-modal-change-password[1]/form[1]/div[2]/button[2]/span[1]"
    Then I wait for 1 sec
