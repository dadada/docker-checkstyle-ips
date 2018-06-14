#!/bin/sh

find / -name *.java
java -jar ./checkstyle.jar -c /checkstyle/tubs_checks.xml "$(find /builds/ -name '*.java')"
