version = "0.1.0"
author = "Async Iterators Authors"
description = "Nim Async iterator helpers for Chronos"
license = "MIT"

requires "questionable >= 0.10.15 & < 0.11.0"
requires "results"
requires "chronos"

task test, "Runs the test suite":
  withDir "tests/":
    # use nimbledeps dir in the tests
    # witout this, NIMBLE_DIR will point to the parent dir
    delEnv "NIMBLE_DIR"
    exec "nimble setup -l"
    exec "nimble test"
