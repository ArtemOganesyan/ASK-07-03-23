#shaginian scenarios for UI automation
@shaginian
  Feature: E2E for "User's Management - Delete User"


        
        @scenario1
        Scenario: Delete Student account - positive

#        !!! This scenario have precondition. Teacher account should be created with next credentials:
#
#        First Name: Oleg     Last Name: ShagT   E-mail: olegshaginianT@gmail.com     Password: 123qwe

#        Teacher account recomended to create by Postman quickly. Here is the link for JSON files:
#
#        https://drive.google.com/drive/folders/1WbfdK3k9NGMNb3Fe8ghGRxQP1VJlfLhd?usp=sharing

#
          Given I open url "http://ask-stage.portnov.com"
          Then SOM type "ilnehransi@mailnesia.com" into "Email field"
          Then SOM type "123abc" into "Password field"
          Then SOM "Sign in"
          Then SOM wait for 1 sec
          Then SOM click on "Users Management" button
          Then SOM wait for 1 sec
          Then SOM click on "Oleg Shag"S account
          Then SOM wait for 1 sec
          Then SOM select "Options"
          Then SOM wait for 1 sec
          Then SOM "Delete" user
          Then SOM wait for 1 sec
          Then SOM "Confirm" deletion
          Then SOM wait for 3 sec



          @scenario2
          Scenario: Delete Teacher account - positive

#         !!! This scenario have precondition. Teacher account should be created with next credentials:
#
#          First Name: Oleg     Last Name: ShagT   E-mail: olegshaginianT@gmail.com     Password: 123qwe

#         Teacher account recomended to create by Postman quickly. Here is the link for JSON files:
#
#         https://drive.google.com/drive/folders/1WbfdK3k9NGMNb3Fe8ghGRxQP1VJlfLhd?usp=sharing
#
          Given I open url "http://ask-stage.portnov.com"
          Then SOM type "ilnehransi@mailnesia.com" into "Email field"
          Then SOM type "123abc" into "Password field"
          Then SOM "Sign in"
          Then SOM wait for 1 sec
          Then SOM click on "Users Management" button
          Then SOM wait for 1 sec
          Then SOM go to "Teachers" tab
          Then SOM wait for 1 sec
          Then SOM click on "Oleg Shag"T account
          Then SOM wait for 1 sec
          Then SOM select "Options"
          Then SOM wait for 1 sec
          Then SOM "Delete" user
          Then SOM wait for 1 sec
          Then SOM "Confirm" deletion
          Then SOM wait for 3 sec





          @scenario3

          Scenario: Delete Teacher User being in the same account - negative

#          !!! This scenario have precondition. Teacher account should be created with next credentials:
#
#          First Name: Oleg     Last Name: ShagT   E-mail: olegshaginianT@gmail.com     Password: 123qwe

#         Teacher account recomended to create by Postman quickly. Here is the link for JSON files:
#
#         https://drive.google.com/drive/folders/1WbfdK3k9NGMNb3Fe8ghGRxQP1VJlfLhd?usp=sharing
#

            Given I open url "http://ask-stage.portnov.com"
            Then SOM type "olegshaginianT@gmail.com" into "Email field"
            Then SOM type "123qwe" into "Password field"
            Then SOM "Sign in"
            Then SOM wait for 1 sec
            Then SOM click on "Users Management" button
            Then SOM wait for 1 sec
            Then SOM go to "Teachers" tab
            Then SOM wait for 1 sec
            Then SOM click on "Oleg Shag"T account
            Then SOM wait for 1 sec
            Then SOM select "Options"
            Then SOM wait for 1 sec
            Then SOM "Delete" user
            Then SOM wait for 1 sec
            Then SOM "Confirm" deletion
            Then SOM wait for 1 sec
            Then SOM take screenshot

