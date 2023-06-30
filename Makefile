PACKAGE=me/timbeck/lox
TOOL_PACKAGE=$(PACKAGE)/tool
# Compile the Java file to a class file.
Lox.class: src/Lox.java
	@ javac -d target src/*.java

AstPrinter.class: src/AstPrinter.java Lox.class

GenerateAst.class: tool/GenerateAst.java
	@ javac -d target tool/*.java

# Convenience targets
run: Lox.class
	@ cd target && java $(PACKAGE)/Lox

print-ast: AstPrinter.class
	@ cd target && java $(PACKAGE)/AstPrinter

generate: GenerateAst.class
	@ cd target && java $(TOOL_PACKAGE)/GenerateAst ../src

clean:
	@ rm -rf target

.PHONY: run clean generate print-ast
