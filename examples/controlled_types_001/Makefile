.PHONY: clean
.PHONY: all

ubuntu: all

ravenscar: clean
	echo "pragma Profile(Ravenscar);" > project_pragmas
	gnatmake -d -p -P controlled_types.gpr

restricted: clean
	echo "pragma Profile(Restricted);" > project_pragmas
	gnatmake -d -p -P controlled_types.gpr

all: clean
	echo "" > project_pragmas
	gnatmake -d -p -P controlled_types.gpr

clean:
	rm -rf obj/*.o
	rm -rf obj/*.ali
	rm -rf obj/main*
