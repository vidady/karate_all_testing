Feature: Articles

  Background: Define URL
    Given url 'https://test-api.k6.io'
  


  Scenario: Create and delete article
    And path 'public/crocodiles'
    And params format='api'
    And method Get
    Then status 200