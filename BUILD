exports_files(glob(["src/test/java/hellocucumber/*.java", "src/test/resources/hellocucumber/*.feature"]))

load("gherkin_test.bzl", "gherkin_test")

gherkin_test(
    name = "friday_test",
    java_files = ["src/test/java/hellocucumber/FridaySteps.java", "src/test/java/hellocucumber/RunCucumberTest.java"],
    feature_files = ["src/test/resources/hellocucumber/Friday.feature"],
    test_class = "hellocucumber.RunCucumberTest",
)

gherkin_test(
    name = "calculator_test",
    java_files = ["src/test/java/hellocucumber/CalculatorSteps.java", "src/test/java/hellocucumber/RunCucumberTest.java"],
    feature_files = ["src/test/resources/hellocucumber/Calculator.feature"],
    test_class = "hellocucumber.RunCucumberTest",
)
