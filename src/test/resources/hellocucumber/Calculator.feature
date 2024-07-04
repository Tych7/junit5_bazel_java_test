Feature: Calculator

  Scenario Outline: Check sums
    Given Number 1 is <number_1>
    Given Operator is "<operator>"
    Given Number 2 is <number_2>
    When I ask what the answer is
    Then I should be told <answer>

  Examples:
    | number_1 | operator | number_2 | answer |
    | 2        | +        | 2        | 4      |
    | 2        | -        | 2        | 0      |
    | 2        | /        | 2        | 1      |
    | 2        | *        | 2        | 4      |

