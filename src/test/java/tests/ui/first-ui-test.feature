Feature: karate ui Tests

Scenario: Sample ui test Scenario
    Given driver 'https://www.google.com'
    And driver.maximize()
    And waitFor("input[name='q']")
    When input('input[name="q"]', 'karate dsl')

Scenario: Login to the application
    * configure driver = { type: 'chrome', executable: 'chrome-win/chrome-win/chrome.exe'}
    Given driver 'https://www.amazon.in'
    And driver.maximize()
    And waitFor("{a}Computers")
    Then click("{a}Computers")
    * delay(5000)