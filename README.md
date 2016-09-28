# Docker Spring Boot Example

## Build Java Artifacts (via `maven` Build Container)

### Manually

```
$ mkdir -p .build/
$ docker run --rm -t -v `pwd`:/usr/src/app -v `pwd`/.build:/usr/src/app/target -v ~/.m2:/var/maven/.m2 -e USER_HOME_DIR=/var/maven -e MAVEN_CONFIG=/var/maven/.m2 --user `id -u`:`id -g` maven:3.3-jdk-8-onbuild-alpine mvn -Duser.home=/var/maven install
```

### Via `Makefile`

```
$ make
```

## Image Build

```
$ docker-compose build
```

## Running the Image

```
$ docker-compose up
```

## Accessing the REST Service

### Create Person

```
$ curl -i -X POST -H "Content-Type:application/json" -d '{  "firstName" : "John",  "lastName" : "Doe" }' http://localhost:8080/people
```

### List People

```
curl http://localhost:8080/people
```
