.PHONY: clean
.PHONY: all
.PHONY: tests

ubuntu: all

ravenscar: clean
	echo "pragma Profile(Ravenscar);" > project_pragmas
	gnatmake -d -p -P calculator.gpr

restricted: clean
	echo "pragma Profile(Restricted);" > project_pragmas
	gnatmake -d -p -P calculator.gpr

all: clean
	echo "" > project_pragmas
	gnatmake -d -p -P calculator.gpr

tests:
	gnatmake -d -p -P calculator_tests.gpr

clean:
	gnat clean -P calculator.gpr

clean-all:
	gnat clean -r -P calculator.gpr
	gnat clean -r -P calculator_tests.gpr

clean-tests:
	gnat clean -r -P calculator_tests.gpr
