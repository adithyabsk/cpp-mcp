"""Repository setup for cpp_mcp legacy WORKSPACE users."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def cpp_mcp_repositories():
    """Set up repositories for cpp_mcp dependencies."""
    
    if not native.existing_rule("rules_cc"):
        http_archive(
            name = "rules_cc",
            urls = ["https://github.com/bazelbuild/rules_cc/releases/download/0.0.17/rules_cc-0.0.17.tar.gz"],
        )
    
    if not native.existing_rule("bazel_skylib"):
        http_archive(
            name = "bazel_skylib",
            urls = ["https://github.com/bazelbuild/bazel-skylib/releases/download/1.7.1/bazel-skylib-1.7.1.tar.gz"],
        )