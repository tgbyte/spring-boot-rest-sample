all:
	rm -rf .build/*
	mkdir -p .build/
	docker run --rm -t -v `pwd`:/usr/src/app -v `pwd`/.build:/usr/src/app/target -v ~/.m2:/var/maven/.m2 -e USER_HOME_DIR=/var/maven -e MAVEN_CONFIG=/var/maven/.m2 --user `id -u`:`id -g` maven:3.3-jdk-8-onbuild-alpine mvn -Duser.home=/var/maven install
	docker build -t tgbyte/spring-boot-rest-sample .
