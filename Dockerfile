FROM openjdk:11
COPY HelloWorld.java /
COPY HelloWorldTest.java /
RUN wget https://repo1.maven.org/maven2/junit/junit/4.13.2/junit-4.13.2.jar
RUN wget https://repo1.maven.org/maven2/org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar
RUN javac -cp .:junit-4.13.2.jar:hamcrest-core-1.3.jar HelloWorld.java HelloWorldTest.java
CMD ["java", "-cp", ".:junit-4.13.2.jar:hamcrest-core-1.3.jar", "org.junit.runner.JUnitCore", "HelloWorldTest"]
