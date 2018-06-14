#!/bin/sh

for f in $(find /builds/ -name '*.java')
do
  java -jar ./checkstyle.jar -c /checkstyle/tubs_checks.xml "${file}"
done
