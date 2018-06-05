#!/bin/sh

java -jar /checkstyle/checkstyle.jar -c /checkstyle/tubs_checks.xml $(find -name '*.java')
