package hellocucumber;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.cucumber.java.en.Then;


import static org.junit.jupiter.api.Assertions.assertEquals;

class Calculate{
    static int Calculator(int nr1, String op, int nr2) {
        String operators[] = {"+", "-", "/", "*"};
        int index = 0;
        for(int i = 0; i < operators.length; i++){
            if(operators[i].equals(op)) index = i + 1;
        }
        switch(index) {
            case 0: 
                return 0;
            case 1: 
                return nr1 + nr2;
            case 2: 
                return nr1 - nr2;
            case 3: 
                return nr1 / nr2;
            case 4: 
                return nr1 * nr2;
            default:
                throw new IllegalArgumentException("Invalid index: " + index);
        }
    }
}

public class CalculatorSteps{
    private int number_1;
    private String operator;
    private int number_2;

    private int actualAnswer;

    @Given("Number 1 is {int}")
    public void Number_1_is(int number_1) {
        this.number_1 = number_1;
    }

    @Given("Operator is {string}")
    public void Operator_is(String operator) {
        this.operator = operator;
    }

    @Given("Number 2 is {int}")
    public void Number_2_is(int number_2) {
        this.number_2 = number_2;
    }

    @When("I ask what the answer is")
    public void I_ask_what_the_answer_is() {
        actualAnswer = Calculate.Calculator(number_1, operator, number_2);
    }

    @Then("I should be told {int}")
    public void i_should_be_told(int expectedAnswer) {
        assertEquals(expectedAnswer, actualAnswer);
    }
}
