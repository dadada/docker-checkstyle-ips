#!/bin/sh

find /builds/ -name '*.java' | xargs java -jar ./checkstyle.jar -c /checkstyle/tubs_checks.xml
