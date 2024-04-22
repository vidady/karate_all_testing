Feature: Articles

  Background: Define URL
    Given url 'https://conduit-api.bondaracademy.com/api/'
    * def tokenResponse = call read('classpath:helpers/createtoken.feature')
    * def token = tokenResponse.authToken
    * def dataGenerator = Java.type('helpers.DataGenerator')
    * def articleRequestBody = read('classpath:json/newArticleRequest.json')
    * set articleRequestBody.article.title = dataGenerator.getRandomArticleJsonTitle().title


  Scenario: Create and delete article
    Given header Authorization = 'Token ' + token
    Given path 'articles'
    And request articleRequestBody
    When method Post
    Then status 201

    Given header Authorization = 'Token ' + token
    * print articleId
    Given path 'articles',articleId
    When method Delete
    Then status 204