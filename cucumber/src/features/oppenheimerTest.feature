Feature: My testing

    # Scenario: Check Relief table
    #     Given I open the url "http://localhost:8080/"
    #     Then  I expect that element "//table[contains(@class,'table')]/tbody/tr/td[1]" contains the text "S989$$$$$"
    #     Then  I expect that element "//table[contains(@class,'table')]/tbody/tr/td[2]" contains the text "1768.00"

    # Scenario: Insert csv
    #     Given I rake the database
    #     Given I open the url "http://localhost:8080/"
    #     When  I click on the element "//button[.='Refresh Tax Relief Table']"
    #     Then  I expect that element "//h1[contains(.,'No records at the moment')]" does exist
    #     When  I set "C:\Users\Dennis\Documents\ProjectOppenheimer\Test Data\taxpayers.csv" to the inputfield "//input[@class='custom-file-input']"
    #     When  I click on the element "//button[.='Refresh Tax Relief Table']"
    #     When  I pause for 500ms
    #     Then  I expect that element "//h1[contains(.,'No records at the moment')]" does not exist

    # Scenario: Table calculation is correct
    #     Given I open the url "http://localhost:8080/"
    #     When  I click on the element "//button[.='Refresh Tax Relief Table']"
    #     Then  I expect that element "//table[contains(@class,'table')]/tbody/tr[1]/td[1]" contains the text "S001$$$$$"
    #     Then  I expect that element "//table[contains(@class,'table')]/tbody/tr[1]/td[2]" contains the text "2225.00"
    #     Then  I expect that element "//table[contains(@class,'table')]/tbody/tr[2]/td[1]" contains the text "S002$$$$$"
    #     Then  I expect that element "//table[contains(@class,'table')]/tbody/tr[2]/td[2]" contains the text "3860.00"

    Scenario: 3.1 AC1: Able to upload csv file with valid records with valid first row of natid, name, gender, salary, birthday, tax
        Given I rake the database
        And   I open the url "http://localhost:8080/"
        When  I click on the element "//button[.='Refresh Tax Relief Table']"
        Then  I expect that element "//h1[contains(.,'No records at the moment')]" does exist
        When  I set "C:\Users\Dennis\Documents\ProjectOppenheimer\Test Data\3-1-taxpayers.csv" to the inputfield "//input[@class='custom-file-input']"
        And   I click on the element "//button[.='Refresh Tax Relief Table']"
        And   I pause for 500ms
        Then  I expect that element "//h1[contains(.,'No records at the moment')]" does not exist

    Scenario: 3.2 AC1: Unable to upload csv file with valid records without first row of natid, name, gender, salary, birthday, tax
        Given I rake the database
        And   I open the url "http://localhost:8080/"
        When  I click on the element "//button[.='Refresh Tax Relief Table']"
        Then  I expect that element "//h1[contains(.,'No records at the moment')]" does exist
        When  I set "C:\Users\Dennis\Documents\ProjectOppenheimer\Test Data\3-2-taxpayers.csv" to the inputfield "//input[@class='custom-file-input']"
        And   I click on the element "//button[.='Refresh Tax Relief Table']"
        And   I pause for 500ms
        Then  I expect that element "//h1[contains(.,'No records at the moment')]" does exist

    Scenario: 3.3 AC2: Unable to upload csv file with empty records with valid first row of natid, name, gender, salary, birthday, tax
        Given I rake the database
        And   I open the url "http://localhost:8080/"
        When  I click on the element "//button[.='Refresh Tax Relief Table']"
        Then  I expect that element "//h1[contains(.,'No records at the moment')]" does exist
        When  I set "C:\Users\Dennis\Documents\ProjectOppenheimer\Test Data\3-3-taxpayers.csv" to the inputfield "//input[@class='custom-file-input']"
        And   I click on the element "//button[.='Refresh Tax Relief Table']"
        And   I pause for 500ms
        Then  I expect that element "//h1[contains(.,'No records at the moment')]" does exist

    Scenario: 3.4 AC3: The button to upload the file from my pc to the portal exists
        Given I open the url "http://localhost:8080/"
        Then  I expect that element "//input[@class='custom-file-input']" does exist