Feature: Get request for weather api
 
 Background:
 Given url 'https://reqres.in'
 And print "*****************"
 
 Scenario: Example of Response matcher
 Given path '/api/users/2'
 When method get
 Then status 200
 And print response
 
 Scenario: Validate response using match keyword in Karate framework
 Given path '/api/users/2'
 When method get
 Then status 200
 And match  response ==
 """
  {
  "data": {
    "id": 2,
    "email": "janet.weaver@reqres.in",
    "first_name": "Janet",
    "last_name": "Weaver",
    "avatar": "https://reqres.in/img/faces/2-image.jpg"
  },
  "support": {
    "url": "https://reqres.in/#support-heading",
    "text": "To keep ReqRes free, contributions towards server costs are appreciated!"
  }
}
 
 """
 
 Scenario: Validate response using match keyword with negative conditions in Karate framework
 Given path '/api/users/2'
 When method get
 Then status 200
 And match  response !=
 """
  {
  "data": {
    "id": 2,
    "email": "janet.weaver@reqres.in",
    "first_name": "Janet",
    "last_name": "Weaver",
    "avatar": "https://reqres.in/img/faces/2-image.jpg"
  },
  "support": {
    "url": "https://reqres.in/#support-heading",
    "text": "To keep ReqRes free, contributions towards server costs are appreciated!"
  }
}
 
 """
 
 Scenario: Validate response using match keyword to a specific property in Karate framework
 Given path '/api/users/2'
 When method get
 Then status 200
 And match  response contains deep {"data:"{"email":"janet.weaver@reqres.in"}}
 