@dvs_features
  Feature: DVS Features


@scenario_1
Scenario: Update Quiz Points
Given DVS open url "http://ask-stage.portnov.com"
Then DVS type "teacher@gmail.com" into "Email field"
Then DVS type "12345Abc" into "Password field"
Then DVS click on element with xpath "//button[@type='submit']"
Then DVS wait for element with xpath "//h5[contains(text(), 'Quizzes')]" to be present
Then DVS click on element with xpath "//h5[contains(text(), 'Quizzes')]"
Then DVS wait for element with xpath "//mat-panel-title[contains(text(),'# Mobile Demo 1')]" to be present
Then DVS click on element with xpath "//mat-panel-title[contains(text(),'# Mobile Demo 1')]"
Then DVS click on element with xpath "//span[contains(text(), 'Edit')]"
Then DVS wait for element with xpath "//mat-panel-title[contains(text(), 'Q1')]" to be present
Then DVS click on element with xpath "//mat-panel-title[contains(text(), 'Q1')]"
Then DVS wait for element with xpath "//mat-slider" to be present
Then I move slider with xpath "//mat-slider" to the "left" for 1 steps
Then DVS click on element with xpath "//span[contains(text(), 'Save')]/../..//button"
