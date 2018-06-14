#!/bin/sh

ls -la
java -jar ./checkstyle.jar -c /checkstyle/tubs_checks.xml $(find -name '*.java')
