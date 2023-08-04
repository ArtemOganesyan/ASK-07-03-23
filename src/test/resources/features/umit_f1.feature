@umit_f1
Feature: Automation Test

  @test1
  Scenario: Create New Assignment
    Given I open url "http:/ask-stage.portnov.com"
    Then I type "teacher@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    Then I click on element with xpath "//span[contains(text(),'Sign In')]"
    And  I wait for 3 sec
    Then I click on element with xpath "//h5[contains(text(),'Assignments')]"
    And I wait for 3 sec
    Then I click on element with xpath "//span[contains(text(),'Create New Assignment')]"
    Then I click on element with xpath "//*[@id='mat-select-0']/div/div[2]/div"
    Then I click on element with xpath "//*[@id='mat-option-1']/span"
    Then I click on element with xpath "//mat-selection-list/mat-list-option[11]/div/mat-pseudo-checkbox"
    Then I click on element with xpath "//*[@id='mat-select-1']/div/div[2]/div"
    Then I click on element with xpath "//span[contains(text(),'# Mobile Demo 1')]"
    Then I click on element with xpath "//span[contains(text(),'Give Assignment')]"


  @test2
  Scenario: Student Account Password Change Steps
    Given I open url "http:/ask-stage.portnov.com"
    Then I type "student25@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    Then I click on element with xpath "//span[contains(text(),'Sign In')]"
    And  I wait for 3 sec
    Then I click on element with xpath "//h5[contains(text(),'Settings')]"
    Then I click on element with xpath "//span[contains(text(),'Change Your Password')]"
    Then I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    Then I type "123Abc" into element with xpath "//input[@formcontrolname='newPassword']"
    Then I type "123Abc" into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then I click on element with xpath "//body/div[2]/div[2]/div[1]/mat-dialog-container[1]/ac-modal-change-password[1]/form[1]/div[2]/button[2]/span[1]"









