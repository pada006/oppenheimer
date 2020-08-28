# oppenheimer
The Project Oppeheimer test

------
WebDriver IO framework setup
- Install node.js 8 or above
- install yarn
- clone project directory from github https://github.com/pada006/oppenheimer
- install yarn for windows
- Use VS code and run "npm install yarn"
- run "yarn install" in cucumber folder using windows terminal

note: to run a single feature file test
npx wdio wdio.conf.js --spec ./src/features/oppenheimerTest.feature


---

To setup API test framework
- install SoapUI open source
- import the Oppenheimer-project-soapui-project.xml file

----
To run the API server
https://github.com/auronsiow/oppenheimer-project-dev
1. Download and clone this repository to your desktop. You may also choose to download the jar OppenheimerProjectDev.jar
2. To run the application, issue the following to your terminal. Replace {path-to-this-jar} with your actual path to the folder containing the jar
java -jar {path-to-this-jar}/OppenheimerProjectDev.jar
3. Give it a min or two to boot up and you should be able to visit the app and API interface here:
http://localhost:8080/
http://localhost:8080/swagger-ui.html
4. Good luck and have fun
Note that should you encounter any problems or have any questions, please do not hesitate to contact us for assistance =)

