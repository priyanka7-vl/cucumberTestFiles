Feature: Is it Friday or not?
  Everybody wants to know when it's Friday

  Scenario Outline: Today is or is not Friday
    Given today is "<day>"!
    When I ask whether it's Friday or not
    Then I should be told "<answer>"!!

  Examples:
    | day            | answer |
    | Friday         | TGIF   |
    | Sunday         | Nope   |
    | anything else! | Nope   |