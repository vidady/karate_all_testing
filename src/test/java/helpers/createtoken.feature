Feature: Create token

  Scenario: Creating a token
    Given url 'https://conduit-api.bondaracademy.com/api/'
    Given path 'users/login'
    And request {"user":{"email":"search4vivek007@gmail.com","password":"vidady"}}
    When method Post
    Then status 200
    * def authToken = response.user.token
