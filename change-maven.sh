#!/bin/bash

maven2() {
	echo "==========MAven 2============="
	export MAVEN_HOME=/opt/maven-2.2.1/
	export PATH="$MAVEN_HOME/bin:$PATH"
	mvn --version
}

maven3() {
	echo "==========Maven 3============="
	export MAVEN_HOME=/opt/maven-3.0.5/
	export PATH="$MAVEN_HOME/bin:$PATH"
	mvn --version
}

