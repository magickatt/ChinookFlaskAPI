Feature: showing off behave

  Scenario: run a simple test
     Given we have behave installed
      When we visit the homepage
      Then we will be greeted with hello world!