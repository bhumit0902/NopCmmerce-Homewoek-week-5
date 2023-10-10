Feature: Nopcommerce Registration

  As a user i want to check the register functionality of Nopcommerce

  Background: I am on Nopcommerce Registeration page
    Given     I open the google chrome browser
    When      I open the URL https://demo.nocommerce.com/register
    Then      I am on Nopcommerce Registration page

  Scenario Outline: I should not be able to register with invalid data and mandatory field (*) of registration page
    When            I enter first name "<First Name>"
    And             I enter last name "<Last Name>"
    And             I enter email address "<Email>"
    And             I enter password "<Password>"
    And             I enter confirm password "<Confirm Password>"
    And             Click on register button
    Then            I can see an error message "<Error Mesage>"
    And             I am not able to register

    Examples:
      |First Name      |Last Name     |Email                                 |Password        | Confirm Password     | Error Message                              |
      |" "             |Bakshi        |Bakshi@gmail.com                      |456897          | 456897               | Please enter First Name                    |
      |Rohan           |" "           |Bakshi@gmail.com                      |456897          | 456897               | Please enter Last Name                     |
      |Rohan           |Bakshi        |" "                                   |456897          | 456897               | Please enter Valid Email                   |
      |Rohan           |Bakshi        |Bakshi@gmail.com                      |" "             | 456897               | Password is required                       |
      |Rohan           |Bakshi        |Bakshi@gmail.com                      |456897          | " "                  | Confirm password is required               |
      |Rohan           |Bakshi        |Bakshi@gmail.com                      |456897          | 45689                | Password and confirm password do not match |
      |Rohan           |Bakshi        |Bakshi@gmail.com                      |45689           | 45689                | Minimum 6 character Password is required   |
      |" "             |" "           |" "                                   |" "             | " "                  | Mandatory (*) field is required            |

    Scenario: i should be able to select any one radio button from Gender lable of your personal details section
      Given   i am on Gender lable of your personal detail section
      When    i select "male" radio button
      And     i select "female" radio button
      Then    i am able to select any one of the radio button

    Scenario Outline: I should be able to select Day, Month and Year from drop down list of Date of birth field
      Given           I am on Date Of Birth field of your personal detail section
      When            I select day "<Day>"
      And             I select month "<Month>"
      And             I select Year "<Year>"
      Then            I am able to select Day, Month and Year from drop down list

      Examples:
      |Day  |Month      |Year   |
      |11   |November   |1989   |

      Scenario: I should be able to check and uncheck the newsletter box on options section
        Given   I am on Newsletter label on Options section
        When    I click on Newsletter check box
        And     I again click on Newsletter Checkbox
        Then    I was able to check and uncheck the box nextr to newsletter label