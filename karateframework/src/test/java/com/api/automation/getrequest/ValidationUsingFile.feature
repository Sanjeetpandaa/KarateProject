Feature: Validation response using external feature file
 
 Background:
 Given url 'https://reqres.in'
 And print "*****************"
 
 Scenario: Validate response using external file in Karate framework
 Given path '/api/users/2'
 When method get
 Then status 200
 * def actualresponse = read("../responsefile.json")
 And match response == actualresponse
 And print "File => ",actualresponse

 
 