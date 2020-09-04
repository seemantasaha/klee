KLEE Symbolic Virtual Machine
=============================

[![Build Status](https://travis-ci.org/klee/klee.svg?branch=master)](https://travis-ci.org/klee/klee)
[![Coverage](https://codecov.io/gh/klee/klee/branch/master/graph/badge.svg)](https://codecov.io/gh/klee/klee)

`KLEE` is a symbolic virtual machine built on top of the LLVM compiler
infrastructure. Currently, there are two primary components:

  1. The core symbolic virtual machine engine; this is responsible for
     executing LLVM bitcode modules with support for symbolic
     values. This is comprised of the code in lib/.

  2. A POSIX/Linux emulation layer oriented towards supporting uClibc,
     with additional support for making parts of the operating system
     environment symbolic.

Additionally, there is a simple library for replaying computed inputs
on native code (for closed programs). There is also a more complicated
infrastructure for replaying the inputs generated for the POSIX/Linux
emulation layer, which handles running native programs in an
environment that matches a computed test input, including setting up
files, pipes, environment variables, and passing command line
arguments.

For further information, see the [webpage](http://klee.github.io/).


Conenct KLEE with SearchMC
---
Assume KLEE and SearchMC installed, put klee_py.py in the same directory as SearchMC.

Two options need to be specified:
1. `--target`: The LLVM bitcode that KLEE will execute
2. `--klee_output_dir`: The directory to which the output of KLEE will go 

Run klee_py.py inside SearchMC directory: `./klee_py.py --klee_output_dir=? --domain_size=?(required when using klee_assume, optional otherwise)`
