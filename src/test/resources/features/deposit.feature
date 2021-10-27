Feature: transfer
    As a customer
    I want to deposit money to my account

Background:
    Given a customer with id 1 and pin 111 with balance 200 exists
    And I login to ATM with id 1 and pin 111


Scenario: Deposit normal amount to my balance
    When I deposit normal 200.0 to my account
    Then my account balance is 400

Scenario: Deposit negative amount to my balance
    When I deposit negative -200.0 to my account
    Then my account balance is 200


