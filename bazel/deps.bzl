"""Dependency setup for cpp_mcp."""

load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")
load("@rules_cc//cc:repositories.bzl", "rules_cc_dependencies")

def cpp_mcp_deps():
    """Set up dependencies for cpp_mcp."""
    rules_cc_dependencies()
    bazel_skylib_workspace()