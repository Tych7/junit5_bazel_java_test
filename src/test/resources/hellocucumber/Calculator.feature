Feature: Calculator

  Scenario Outline: Check sums
    Given Number 1 is <number_1>
    Given Operator is "<operator>"
    Given Number 2 is <number_2>
    When I ask what the answer is
    Then I should be told "<answer>"

Examples:
    | number_1 | operator | number_2 | answer    |
    | 2        | +        | 2        | 4.0       |
    | 2        | -        | 2        | 0.0       |
    | 2        | /        | 2        | 1.0       |
    | 2        | *        | 2        | 4.0       |
    | 5        | +        | 3        | 8.0       |
    | 5        | -        | 3        | 2.0       |
    | 9        | /        | 3        | 3.0       |
    | 4        | *        | 3        | 12.0      |
    | 10       | +        | 15       | 25.0      |
    | 20       | -        | 5        | 15.0      |
    | 100      | /        | 25       | 4.0       |
    | 7        | *        | 6        | 42.0      |
    | 0        | +        | 0        | 0.0       |
    | 0        | -        | 0        | 0.0       |
    | 0        | *        | 10       | 0.0       |
    | 0        | /        | 1        | 0.0       |
    | 1        | /        | 0        | NaN       | # Division by zero
    | -5       | +        | 3        | -2.0      |
    | -5       | -        | 3        | -8.0      |
    | -10      | *        | -2       | 20.0      |
    | -8       | /        | 2        | -4.0      |
    | -8       | /        | -2       | 4.0       |
    | 5.5      | +        | 2.5      | 8.0       |
    | 5.5      | -        | 2.5      | 3.0       |
    | 5.5      | *        | 2        | 11.0      |
    | 5.5      | /        | 2.5      | 2.2       |
    | 5        | *        | 0        | 0.0       |
    | 1000000  | +        | 1000000  | 2000000.0 |
    | 1000000  | -        | 500000   | 500000.0  |
    | 1000000  | *        | 2        | 2000000.0 |
    | 1000000  | /        | 2        | 500000.0  |
    | 1000000  | /        | 0        | NaN       | # Division by zero
    | 10       | %        | 3        | 1.0       |
    | 10       | %        | 5        | 0.0       |
    | 10       | %        | 10       | 0.0       |
    | 10       | %        | 0        | NaN       | # Modulus by zero
    | -10      | %        | 3        | -1.0      |
    | -10      | %        | -3       | -1.0      |
    | 3        | ^        | 2        | 9.0       |
    | 2        | ^        | 3        | 8.0       |
    | 10       | ^        | 0        | 1.0       | # Power of zero
    | 0        | ^        | 10       | 0.0       |
    | -2       | ^        | 3        | -8.0      |
    | -2       | ^        | 2        | 4.0       |
    | 2.5      | ^        | 2        | 6.25      |
    | 2.5      | %        | 1.5      | 1.0       |
    | 2.5      | +        | 2.5      | 5.0       |
    | 2.5      | -        | 2.5      | 0.0       |
    | 2.5      | *        | 2        | 5.0       |
    | 2.5      | /        | 2.5      | 1.0       |
