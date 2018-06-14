FROM java:8-jdk

WORKDIR /checkstyle

ADD tubs_checks.xml .
ADD checkstyle.sh .

ENV VERSION=5.7

RUN curl -sLO https://github.com/checkstyle/checkstyle/releases/download/checkstyle-${VERSION}/checkstyle-${VERSION}-all.jar
RUN mv checkstyle-${VERSION}-all.jar checkstyle.jar

# https://docs.gitlab.com/runner/executors/docker.html#the-entrypoint
ENTRYPOINT ["./checkstyle.sh"]
