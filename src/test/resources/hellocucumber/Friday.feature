Feature: Is it Friday yet?

  Scenario Outline: How long untill Friday
    Given today is "<day>"
    When I ask whether it's Friday yet
    Then I should be told "<answer>"

  Examples:
    | day            | answer |
    | Monday         | 4 days |
    | Tuesday        | 3 days |
    | Wednesday      | 2 days |
    | Thursday       | 1 days |
    | Friday         | TGIF   |
    | Saturday       | 6 days |
    | Sunday         | 5 days |
