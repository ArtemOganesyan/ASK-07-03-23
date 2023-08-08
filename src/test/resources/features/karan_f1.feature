@karan_f1
  Feature: karan_f1

      @scenario1_karan_f1
    Scenario: User set minimum points using keyboard
      Given I open url "http://ask-stage.portnov.com"
      Then I type "student1ask@gmail.com" into element with xpath "//input[@formcontrolname='email']"
      Then I type "12345Abc" into element with xpath "//input[@type='password']"
      Then I click on element with xpath "//button[@type='submit']"
      Then I wait for element with xpath "//h5[contains(text(),'Quizzes')]" to be present
      Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
      Then I wait for element with xpath "//button/span[contains(text(),'Create New Quiz')]" to be present
      Then I click on element with xpath "//button/span[contains(text(),'Create New Quiz')]"
      Then I wait for element with xpath "//input[@formcontrolname='name']" to be present
      Then I type "My Quiz" into element with xpath "//input[@formcontrolname='name']"
      Then I click on element with xpath "//*[contains(text(),'add_circle')]/../.."
      Then I wait for 1 sec
      And Karan move slider with xpath "//*[contains(text(), 'Q1')]/../../..//mat-slider" to the "left" for 5 steps
      Then I wait for 1 sec

    @scenario2_karan_f1
    Scenario: User set maximum points using keyboard
      Given I open url "http://ask-stage.portnov.com"
      Then I type "student1ask@gmail.com" into element with xpath "//input[@formcontrolname='email']"
      Then I type "12345Abc" into element with xpath "//input[@type='password']"
      Then I click on element with xpath "//button[@type='submit']"
      Then I wait for element with xpath "//h5[contains(text(),'Quizzes')]" to be present
      Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
      Then I wait for element with xpath "//button/span[contains(text(),'Create New Quiz')]" to be present
      Then I click on element with xpath "//button/span[contains(text(),'Create New Quiz')]"
      Then I wait for element with xpath "//input[@formcontrolname='name']" to be present
      Then I type "My Quiz" into element with xpath "//input[@formcontrolname='name']"
      Then I click on element with xpath "//*[contains(text(),'add_circle')]/../.."
      Then I wait for 1 sec
      And Karan move slider with xpath "//*[contains(text(), 'Q1')]/../../..//mat-slider" to the "right" for 5 steps
      Then I wait for 1 sec