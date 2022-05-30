Feature: Get request for weather api
 
 Background:
 Given url 'https://reqres.in'
 And print "*****************"
 
 #Scenario: Verify the Get request for list of users
 
 #Given url 'https://reqres.in/api/users?page=2'
 #When method get
 #Then status 200
 
 Scenario: Verify the Get request for single user using path keyword

 And path '/api/users/2'
 When method get
 Then status 200
 
 
 Scenario: Verify the Get request for single user using Header in json formate

 And path '/api/users/2'
 And header Accept = 'application/json'
 When method get
 Then status 200
 
 
 Scenario: Verify the Get request for single user using Header in xml formate

 And path '/api/users/2'
 And header Accept = 'application/xml'
 When method get
 Then status 200