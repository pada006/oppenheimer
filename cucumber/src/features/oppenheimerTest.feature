Feature: My testing

Scenario: Check Relief table
    Given I open the url "http://localhost:8080/"
    Then  I expect that element "//table[contains(@class,'table')]/tbody/tr/td[1]" contains the text "S989$$$$$"
    Then  I expect that element "//table[contains(@class,'table')]/tbody/tr/td[2]" contains the text "1768.00"

Scenario: Insert csv
    Given I rake the database
    Given I open the url "http://localhost:8080/"
    When  I click on the element "//button[.='Refresh Tax Relief Table']"
    Then  I expect that element "//h1[contains(.,'No records at the moment')]" does exist
    When  I set "C:\Users\Dennis\Documents\ProjectOppenheimer\Test Data\taxpayers.csv" to the inputfield "//input[@class='custom-file-input']"
    When  I click on the element "//button[.='Refresh Tax Relief Table']"
    When  I pause for 500ms
    Then  I expect that element "//h1[contains(.,'No records at the moment')]" does not exist

Scenario: Table calculation is correct
    Given I open the url "http://localhost:8080/"
    When  I click on the element "//button[.='Refresh Tax Relief Table']"
    Then  I expect that element "//table[contains(@class,'table')]/tbody/tr[1]/td[1]" contains the text "S001$$$$$"
    Then  I expect that element "//table[contains(@class,'table')]/tbody/tr[1]/td[2]" contains the text "2225.00"
    Then  I expect that element "//table[contains(@class,'table')]/tbody/tr[2]/td[1]" contains the text "S002$$$$$"
    Then  I expect that element "//table[contains(@class,'table')]/tbody/tr[2]/td[2]" contains the text "3860.00"