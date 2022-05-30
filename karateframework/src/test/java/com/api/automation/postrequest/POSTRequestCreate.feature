Feature: Create a post Request Test

Background:
  Given url 'https://reqres.in'
 
  Scenario: Create a POST request
  Given path '/api/users/2'
  And request {"name": "Sanjeet","job": "QAAutomation"}
  And headers {Accept: "application/json",Content-Type:"application/json"}
  When method post
  Then status 201
  And match response.name == "Sanjeet"
  And match response.job == "QAAutomation"
  And print response
  
  
  Scenario: Create a POST request reading request data from a external file
  Given path '/api/users/2'
  * def body = read("data/requestbodyforPostrequest.json")
  And request body
  And headers {Accept: "application/json",Content-Type:"application/json"}
  When method post
  Then status 201
  
  