#!/bin/bash

java6() {
	echo "==========Java 6============="
	export JAVA_HOME=/usr/local/java-stuff/jdk/
	export PATH="$JAVA_HOME/bin:$PATH"
	java -version
}

java7() {
	echo "==========Java 7============="
	export JAVA_HOME=/usr/local/java-stuff/jdk1.7.0_07/
	export PATH="$JAVA_HOME/bin:$PATH"
	java -version
}

java8() {
	echo "==========Java 8============="
	export JAVA_HOME=/usr/local/java-stuff/jdk1.8.0_25/
	export PATH="$JAVA_HOME/bin:$PATH"
	java -version
}