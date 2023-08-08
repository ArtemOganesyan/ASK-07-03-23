@oav_features
  Feature: OAV Features
    
    
    @activation_scenario
    Scenario: User activation
      Given I open url "http://ask-stage.portnov.com/#/registration"
      Then I type "Test" into element with xpath "//input[@formcontrolname='firstName']"
      Then I type "Testov" into element with xpath "//input[@formcontrolname='lastName']"
      Then I type "fakeuseremail@fakedomain.com" into element with xpath "//input[@formcontrolname='email']"
      Then I type "AAA111" into element with xpath "//input[@formcontrolname='group']"
      Then I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
      Then I type "12345Abc" into element with xpath "//input[@formcontrolname='confirmPassword']"
      And I click on element with xpath "//button[@type='submit']"
      And I take screenshot
      Then OAV activate user with email "fakeuseremail@fakedomain.com"

    @webdriver_scenario
    Scenario: OAV web driver scenario
#      Then OAV test entire application
      Then OAV authenticate as a teacher