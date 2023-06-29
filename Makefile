# Compile the Java file to a class file.
Hello.class: src/Hello.java
	@ javac -d target src/Hello.java

# Convenience target to build and run it.
run: Hello.class
	@ cd target && java Hello

# Tell make that "run" is not the name of a file.
.PHONY: run
