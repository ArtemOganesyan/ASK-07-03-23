# MinniP Feature File for LOGIN

@minnip_f1
Feature: Login into ASK app

  @minnip_f11
  Scenario: Log in to ASK with valid credentials and Logout
    Given MP open url "http://ask-stage.portnov.com/#/login"
    Then MP type "teacher_9@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then MP type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    Then MP click on element with xpath "//button[@type='submit']"
    Then MP wait for element with xpath "//h5[contains(text(), 'Quizzes')]" to be present
    Then MP element with xpath "//ac-side-menu/mat-list/header/div/p" should contain text "TEACHER"
    Then MP click on element with xpath "//h5[contains(text(), 'Log Out')]"
    Then MP click on element with xpath "//span[contains(text(), 'Log Out')]/../../..//button[2]"
    And MP is successfully logged out

  @minnip_f12
  Scenario Outline: Log into ASK with valid credentials
    Given MP open url "http://ask-stage.portnov.com/#/login"
    Then MP type "<Email>" into element with xpath "//input[@formcontrolname='email']"
    Then MP type "<Password>" into element with xpath "//input[@formcontrolname='password']"
    Then MP click on element with xpath "//button[@type='submit']"
    Then MP is successfully logged in
    Examples:
      | Email                 | Password |
      | teacher_9@gmail.com   | 12345Abc |
      | student2121@gmail.com | 12345Abc |
      | TEACHER_9@GMAIL.COM   | 12345Abc |

  @minnip_f13
  Scenario Outline: Log into ASK with invalid credentials
    Given MP open url "http://ask-stage.portnov.com/#/login"
    Then MP type "<Email>" into element with xpath "//input[@formcontrolname='email']"
    Then MP type "<Password>" into element with xpath "//input[@formcontrolname='password']"
    Then MP click on element with xpath "//button[@type='submit']"
    Then MP login is unsuccessful
    Examples:
      | Email                  | Password  |
      | student2121@gmail.com  | 12345aBC  |
      | student2121@gmail.com  | 12345Abc  |
      |  student2121@gmail.com |  12345Abc |
      | studentttt21@gmail     | 12345Abc  |
      | student2121@gmail.com  | 12345ABCC |

  @minnip_f14
  Scenario: Log into ASK with invalid credentials
    Given MP open url "http://ask-stage.portnov.com/#/login"
    Then MP type "student212@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then MP type "123456abc" into element with xpath "//input[@formcontrolname='password']"
    Then MP click on element with xpath "//button[@type='submit']"
    Then MP wait for 5 sec
    Then MP login is unsuccessful
    Then MP take screenshot