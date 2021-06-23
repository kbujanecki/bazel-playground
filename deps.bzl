def _hello_repo_impl(ctx):
    ctx.file("hello.txt", ctx.attr.message)
    ctx.file("BUILD.bazel", 'exports_files(["hello.txt"])')
    ctx.file("ver.bzl", 'VERSION = "212.0.1.3"\n')

hello_repo = repository_rule(
    implementation = _hello_repo_impl,
    attrs = {
        "message": attr.string(
            mandatory = True,
        ),
    },
)
