
load("gherkin_test.bzl", "gherkin_test")

java_library(
    name = "java_lib",
    srcs = ["src/test/java/hellocucumber/FridaySteps.java"],
    deps = [
        "@maven//:io_cucumber_cucumber_java",
        "@maven//:io_cucumber_cucumber_junit_platform_engine",
        "@maven//:org_junit_jupiter_junit_jupiter_api",
    ]
)

gherkin_test(
    name = "friday_test",
    feature_files = ["src/test/resources/hellocucumber/Friday.feature"],
    run_file = "src/test/java/runfile/RunCucumberTest.java",
    test_class = "runfile.RunCucumberTest",
    deps = [":java_lib"],
)

gherkin_test(
    name = "calculator_test",
    step_definitions = ["src/test/java/hellocucumber/CalculatorSteps.java"],
    feature_files = ["src/test/resources/hellocucumber/Calculator.feature"],
    run_file = "src/test/java/runfile/RunCucumberTest.java",
    test_class = "runfile.RunCucumberTest",
)
