# oppenheimer
The Project Oppeheimer test

Refer to the Testing strategy.xlsx in "Test Files" folder for project test scenarios

------
(1)
WebDriver IO framework setup (For UI functionality tests)

- Install node.js 8 or above
- Clone project directory from github https://github.com/pada006/oppenheimer
- Install yarn for windows
- Use VS code and run "npm install yarn"
- Run "yarn install" from the "cucumber" folder using windows command prompt

note: to run the oppenheimer test feature file test from the project directory
npx wdio wdio.conf.js --spec ./src/features/oppenheimerTest.feature

---
(2)
To setup API test framework (For API functionality tests)

- Install SoapUI open source
- Import the Oppenheimer-project-soapui-project.xml file
- Now you are able to run the test scenarios at Oppenheimer project/oppenheimer test

----
(3)
To run the Project API server and webpage

https://github.com/auronsiow/oppenheimer-project-dev
1. Download and clone this repository to your desktop. You may also choose to download the jar OppenheimerProjectDev.jar
2. To run the application, issue the following to your terminal. Replace {path-to-this-jar} with your actual path to the folder containing the jar
java -jar {path-to-this-jar}/OppenheimerProjectDev.jar
3. Give it a min or two to boot up and you should be able to visit the app and API interface here:
http://localhost:8080/
http://localhost:8080/swagger-ui.html
4. Good luck and have fun
Note that should you encounter any problems or have any questions, please do not hesitate to contact us for assistance =)

