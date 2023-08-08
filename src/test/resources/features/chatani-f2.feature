@chatani-f2

  Feature: Teacher assigns quiz

    @scenario-2
    Scenario: Assign Quiz to the student
      Given I open url "http://ask-stage.portnov.com/#/login"
      Then I type "student1ask@gmail.com" into element with xpath "//input[@formcontrolname='email']"
      Then I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
      Then I click on element with xpath "//button[@type='submit']"
      Then I wait for 2 sec
      Then I click on element with xpath "//h5[contains (text(),'Assignments')]/.."
      Then I wait for element with xpath "//*[contains(text(),'Create New Assignment')]/.." to be present
      Then I click on element with xpath "//*[contains(text(),'Create New Assignment')]/.."
      Then I click on element with xpath "//mat-select[@placeholder='Select Quiz To Assign']"
      And I wait for 2 sec
      Then I click on element with xpath "//*[contains(text(),'# Mobile Demo 3')]"
      And I wait for element with xpath "//text()[contains(.,'Student One')]/../../.." to be present
      Then I click on element with xpath "//text()[contains(.,'Student One')]/../../.."
      And element with xpath "//button[@type='submit']" should be present
      Then I click on element with xpath "//button[@type='submit']"
      Then I wait for element with xpath "//*[contains(text(),'List of Assignments')]" to be present
