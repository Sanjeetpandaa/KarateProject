Feature: Variables contains in Karate framework
 
 Background:
 Given url 'https://reqres.in'
 And print "*****************"
 
 Scenario: To create a variable
  Given def var1 = 10
  And def var2 = "Sanjeet"
  And print var1
  And print var2
 