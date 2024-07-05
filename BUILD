exports_files(glob(["src/test/java/hellocucumber/*.java", "src/test/resources/hellocucumber/*.feature"]))

load("gherkin_test.bzl", "gherkin_test")

gherkin_test(
    name = "friday_test",
    step_definitions = ["src/test/java/hellocucumber/FridaySteps.java"],
    feature_files = ["src/test/resources/hellocucumber/Friday.feature"],
    run_file = "src/test/java/hellocucumber/RunCucumberTest.java",
    test_class = "hellocucumber.RunCucumberTest",
)

gherkin_test(
    name = "calculator_test",
    step_definitions = ["src/test/java/hellocucumber/CalculatorSteps.java"],
    feature_files = ["src/test/resources/hellocucumber/Calculator.feature"],
    run_file = "src/test/java/hellocucumber/RunCucumberTest.java",
    test_class = "hellocucumber.RunCucumberTest",
)
