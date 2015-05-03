Feature: Tests for calculator

  Scenario: Adding
    Given I visit calculator
    When there are 12 cucumbers
    And I add 9 cucumbers
    Then I should have 21 cucumbers
