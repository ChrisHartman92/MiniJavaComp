JFLEX=jflex
JAVAC=javac
JAVA=java


#------------------------------------------------------

all:

	$(JFLEX) lexxer.flex
	$(JAVA) -jar java-cup-11a.jar -interface -parser pCup pCup.cup
	$(JAVAC) -cp "java-cup-11a.jar:provided.jar:java-cup-11a-runtime.jar:." Runner.java
