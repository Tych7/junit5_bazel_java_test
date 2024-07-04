package hellocucumber;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.cucumber.java.en.Then;


import static org.junit.jupiter.api.Assertions.assertEquals;


class IsItFriday {
    static String isItFriday(String today) {
        String days[] = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};
        for (int i = 0; i < days.length; i++) {
            if (days[i].equals(today)) {
                if (days[i].equals("Friday")) {
                    return "TGIF";
                } else {
                    int daysUntilFriday = (5 - i + 7) % 7;
                    return daysUntilFriday + " days";
                }
            }
        }
        return "Nope";
    }
}


public class FridaySteps{
    private String today;
    private String actualAnswer;

    @Given("today is {string}")
    public void today_is(String today) {
        this.today = today;
    }

    @When("I ask whether it's Friday yet")
    public void i_ask_whether_it_s_Friday_yet() {
        actualAnswer = IsItFriday.isItFriday(today);
    }

    @Then("I should be told {string}")
    public void i_should_be_told(String expectedAnswer) {
        assertEquals(expectedAnswer, actualAnswer);
    }
}
