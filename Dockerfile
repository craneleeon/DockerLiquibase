FROM openjdk:7
VOLUME ["/app"]

COPY lqb /lqb 

RUN export PATH=/app:/lqb:$PATH
RUN export LIQUIBASE_HOME=/lqb
RUN ln -s /lqb/liquibase /usr/bin/liquibase

WORKDIR /app
