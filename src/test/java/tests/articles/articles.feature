Feature: Articles

  Background: Define URL
    Given url 'https://conduit-api.bondaracademy.com/api/'
    * def tokenResponse = call read('classpath:helpers/createtoken.feature')
    * def token = tokenResponse.authToken
    * def dataGenerator = Java.type('helpers.DataGenerator')
    * def articleRequestBody = read('classpath:json/newArticleRequest.json')
    * set articleRequestBody.article.title = dataGenerator.getRandomArticleJsonTitle().title


  Scenario: Create new article
    Given header Authorization = 'Token ' + token
    Given path 'articles'
    And request articleRequestBody
    When method Post
    Then status 201
    And match response.article.title == articleRequestBody.article.title


  @debug
  Scenario: Create and delete article
    Given header Authorization = 'Token ' + token
    Given path 'articles'
    And request articleRequestBody
    When method Post
    Then status 201
    * def tokenVal = token
    Given header Authorization = 'Token ' + token
    * print tokenVal
    * print articleRequestBody.article.title


    Given header Authorization = 'Token ' + token
    Given path 'articles'
    Given params {limit:10, offset:0}
    When method Get
    Then status 200
    * def articleId = response.articles[0].slug
    And match response.articles[0].title contains articleRequestBody.article.title

    Given header Authorization = 'Token ' + token
    * print articleId
    Given path 'articles',articleId
    When method Delete
    Then status 204




