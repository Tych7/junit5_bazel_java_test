package hellocucumber;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.cucumber.java.en.Then;


import static org.junit.jupiter.api.Assertions.assertEquals;

class Calculate {
    static float Calculator(float nr1, String op, float nr2) {
        String[] operators = {"+", "-", "/", "*", "%", "^"};
        int index = 0;
        for (int i = 0; i < operators.length; i++) {
            if (operators[i].equals(op)) index = i + 1;
        }
        switch (index) {
            case 0:
                throw new IllegalArgumentException("Invalid operator: " + op);
            case 1:
                return nr1 + nr2;
            case 2:
                return nr1 - nr2;
            case 3:
                if (nr2 == 0) return Float.NaN;
                else return nr1 / nr2;
            case 4:
                return nr1 * nr2;
            case 5:
                if (nr2 == 0) return Float.NaN;
                else return nr1 % nr2;
            case 6:
                return (float) Math.pow(nr1, nr2);
            default:
                throw new IllegalArgumentException("Invalid index: " + index);
        }
    }
}


public class CalculatorSteps {
    private float number_1;
    private String operator;
    private float number_2;

    private String actualAnswer;

    @Given("Number 1 is {float}")
    public void Number_1_is(float number_1) {
        this.number_1 = number_1;
    }

    @Given("Operator is {string}")
    public void Operator_is(String operator) {
        this.operator = operator;
    }

    @Given("Number 2 is {float}")
    public void Number_2_is(float number_2) {
        this.number_2 = number_2;
    }

    @When("I ask what the answer is")
    public void I_ask_what_the_answer_is() {
        try {
            actualAnswer = String.valueOf(Calculate.Calculator((float) number_1, operator, (float) number_2));
        } catch (ArithmeticException e) {
            actualAnswer = "Error";
        }
    }

    @Then("I should be told {string}")
    public void i_should_be_told(String expectedAnswer) {
        assertEquals(expectedAnswer, actualAnswer);
    }
}
