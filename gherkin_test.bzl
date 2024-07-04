load("@contrib_rules_jvm//java:defs.bzl", "java_junit5_test")


def gherkin_test(
    name,
    java_files = [],
    feature_files = [],
    test_class = "",
):
    java_junit5_test(
        name = name,
        srcs = java_files,
        resources = feature_files,
        deps = [
            "@maven//:io_cucumber_cucumber_java",
            "@maven//:io_cucumber_cucumber_junit_platform_engine",
            "@maven//:org_junit_jupiter_junit_jupiter_api",
            "@maven//:org_junit_jupiter_junit_jupiter_engine",
            "@maven//:org_junit_platform_junit_platform_suite_engine",
            "@maven//:org_junit_platform_junit_platform_suite_api",
            "@maven//:org_junit_platform_junit_platform_reporting",

            # "@maven//:org_junit_platform_junit_platform_launcher",
        ],
        test_class = test_class,
    )