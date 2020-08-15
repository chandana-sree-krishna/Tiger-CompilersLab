# Getting started.


## Weekly task: Extending Reverse polish compiler

The aim of the weekly assignment is to make you differentiate between
abstract syntax and concrete syntax. Do the following tasks.


1. Copy the source of the reverse polish compiler that is available in this
   repository.
   
2. Add the following features to it.


[Parenthesising expressions]
:  Currently there is no way to enter the input (2 + 3) * 4 as the
   expression language does not support the bracket. Modify the code in
   the reverse polish source tree to start supporting bracketting of
   expression.

[Adding the division operator]
:  Add an operator for doing division.

In each of this case it would be good if you start with answering the
following questions.

1. Which changes result in a change in the abstract syntax and which of
   them changes the concrete syntax ?

2. What are the files that will have to be changed when the
   abstract/concrete syntax changes ?

3. When will you have to modify `translate.sml` ?

4. When will you have to modify the machine `rp` ?

## Project task: Making the skeleton compiler directory

In this week's project related task you will setup the project
directory so that it is easy to work and build the compiler. Your
project should finally result in building an executable `tigc` that
compiles the [tiger language][tiger] to [riscv] processor.

1. Create the `project` subdirectory in your repository if you have not
   done so.
   
2. Create the following files as part of the subdirectory.
   
   - A `tiger.sml` file that prints "hello"
   - A `tiger.mlb` file that can be used by mlton to compile the tiger.sml file to get an
	   executable.
   - A `tiger.cm` file that will allow to easily load the entire
     compiler in smlnj for debugging during development.
   - A `Makefile` that understands the following targets. The `all`
     that will compile and get the tiger compiler into the executable
     `tigc` and a `clean` target that will remove all intermediate
     files. Both `all` and `clean` should be [PHONY targets][phony]
	 
[phony]: <https://www.gnu.org/software/make/manual/html_node/Phony-Targets.html>
[tiger]: <http://www.cs.tufts.edu/comp/181/tiger.html>
[riscv]: <https://riscv.org>

