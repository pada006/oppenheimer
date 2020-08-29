Feature: Test scenarios for The Oppenheimer Project

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

    Scenario: 5.1 AC1: The button on the screen must be red-colored
        Given I open the url "http://localhost:8080/"
        Then  I expect that the css attribute "background-color" from element "//a[contains(@class,'btn-danger')]" is "rgb(220,53,69)"

    Scenario: 5.2 AC2: The text on the button must be exactly “Dispense Now”
        Given I open the url "http://localhost:8080/"
        Then  I expect that element "//a[@href='dispense']" matches the text "Dispense Now"

    Scenario: 5.3 AC3: After clicking on the button, it should direct me to a page with a text that says “Cash dispensed”
        Given I open the url "http://localhost:8080/"
        When  I click on the button "//a[@href='dispense']"
        Then  I expect that the url is "http://localhost:8080/dispense"
        Then  I expect that element "//div[@class='container']/div" matches the text "Cash dispensed"