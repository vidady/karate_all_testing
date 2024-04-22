Feature: Tests for home page

  Background: Define URL
  Given url 'http://conduit.productionready.io/api/'

  @homepage
  Scenario: Get all tags
    Given path 'tags'
    When method Get
    Then status 200
    And match response.tags contains 'eos'
    And match response.tags !contains 'cars'
    And match response.tags == '#array'
    And match each response.tags == '#string'


  @homepage
  Scenario: Get 10 articles from the page
    Given params {limit:10, offset:0}
    Given path 'articles'
    When method Get
    Then status 200
    And match response.articles == '#[10]'

