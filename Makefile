PROJECT =       pkaushi1-project

VERBOSE=
TARGET=		jar

$(TARGET):
		ant -emacs $(VERBOSE) $(TARGET)


clean:
		rm -rf build && rm -rf doc


submit:
		tar -cvzf $(PROJECT).tar.gz README build.xml Makefile \
                  `find src -name '*.java'`
