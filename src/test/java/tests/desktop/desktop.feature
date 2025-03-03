Feature: Sample to test desktop app


  Scenario: Sample scenario to test the desktop interaction of karate
    * karate.fork('C:/Program Files/Google/Chrome/Application/chrome.exe')
    * robot { app: '^Chrome' }
    * locate('//MenuItem{Extensions}').children[0].click()

