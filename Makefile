PACKAGE=me/timbeck/lox
# Compile the Java file to a class file.
Lox.class: src/Lox.java
	@ javac -d target src/*.java

# Convenience target to build and run it.
.PHONY: run
run: Lox.class
	@ cd target && java $(PACKAGE)/Lox

.PHONY: clean
clean:
	@ rm -rf target