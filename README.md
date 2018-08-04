# deps-spring-boot

[![Sonar](https://sonarcloud.io/api/project_badges/measure?project=cn.home1%3Adeps-spring-boot&metric=alert_status)](https://sonarcloud.io/dashboard?id=cn.home1%3Adeps-spring-boot)  
[Maven Site (github.io)](https://ci-and-cd.github.io/ci-and-cd/snapshot/deps-spring-boot/index.html)  
[Maven site (infra.top)](https://maven-site.infra.top/ci-and-cd/maven-build/snapshot/staging/deps-spring-boot/index.html)  
[Source Repository](https://github.com/ci-and-cd/deps-spring-boot/tree/develop)  
[![Build Status](https://travis-ci.org/ci-and-cd/deps-spring-boot.svg?branch=develop)](https://travis-ci.org/ci-and-cd/deps-spring-boot)  


Dependency management for spring-boot, spring-data, spring-cloud

## I. spring-boot
[https://projects.spring.io/spring-boot/](https://projects.spring.io/spring-boot/)  

### 1. Spring Boot Starter Parent
[github /spring-projects/spring-boot/spring-boot-starters/spring-boot-starter-parent](https://github.com/spring-projects/spring-boot/blob/master/spring-boot-project/spring-boot-starters/spring-boot-starter-parent/pom.xml)  
[mvnrepository Spring Boot Starter Parent](https://mvnrepository.com/artifact/org.springframework.boot/spring-boot-starter-parent)  

### 2. Spring Boot Dependencies
[github /spring-projects/spring-boot/spring-boot-dependencies/](https://github.com/spring-projects/spring-boot/blob/master/spring-boot-dependencies/pom.xml)  
[mvnrepository Spring Boot Dependencies](https://mvnrepository.com/artifact/org.springframework.boot/spring-boot-dependencies)  

- 2.0.2.RELEASE (org.springframework:spring-core:5.0.6.RELEASE)
```text
io.spring.platform:platform-bom:Cairo-SR1
org.springframework.data:spring-data-releasetrain:Kay-SR7
org.springframework.cloud:spring-cloud-dependencies:Finchley.RC1
org.springframework.batch:spring-batch-core:4.0.1.RELEASE
org.springframework.integration:spring-integration-core:5.0.5.RELEASE
org.springframework.session:spring-session:1.3.3.RELEASE
org.springframework.statemachine:spring-statemachine-bom:2.0.1.RELEASE
...
```

- 2.0.1.RELEASE (org.springframework:spring-core:5.0.5.RELEASE)
```text
io.spring.platform:platform-bom:Cairo-SR1
org.springframework.data:spring-data-releasetrain:Kay-SR6
org.springframework.cloud:spring-cloud-dependencies:Finchley.RC1
org.springframework.batch:spring-batch-core:4.0.1.RELEASE
org.springframework.integration:spring-integration-core:5.0.4.RELEASE
org.springframework.session:spring-session:1.3.3.RELEASE
org.springframework.statemachine:spring-statemachine-bom:2.0.1.RELEASE
...
```

- 1.5.13.RELEASE (org.springframework:spring-core:4.3.17.RELEASE)
```text
io.spring.platform:platform-bom:Brussels-SR10
org.springframework.data:spring-data-releasetrain:Ingalls-SR12
org.springframework.cloud:spring-cloud-dependencies:Dalston.SR5
org.springframework.batch:spring-batch-core:3.0.9.RELEASE
org.springframework.integration:spring-integration-core:4.3.16.RELEASE
org.springframework.session:spring-session:1.3.3.RELEASE
org.springframework.statemachine:spring-statemachine-core:1.2.11.RELEASE
...
```

- 1.5.12.RELEASE (org.springframework:spring-core:4.3.16.RELEASE)
```text
io.spring.platform:platform-bom:Brussels-SR9
org.springframework.data:spring-data-releasetrain:Ingalls-SR11
org.springframework.cloud:spring-cloud-dependencies:Dalston.SR4
org.springframework.batch:spring-batch-core:3.0.9.RELEASE
org.springframework.integration:spring-integration-core:4.3.16.RELEASE
org.springframework.session:spring-session:1.3.3.RELEASE
org.springframework.statemachine:spring-statemachine-core:1.2.11.RELEASE
...
```


## II. spring-data
[http://projects.spring.io/spring-data/](http://projects.spring.io/spring-data/)  

### 1. Spring Data Release Train BOM
[github /spring-projects/spring-data-build(spring-data-parent)/bom](https://github.com/spring-projects/spring-data-build/blob/master/bom/pom.xml)    
[mvnrepository Spring Data Release Train BOM](https://mvnrepository.com/artifact/org.springframework.data/spring-data-releasetrain)    

### 2. Spring Data Build General Parent Module
[github /spring-projects/spring-data-build(spring-data-parent)](https://github.com/spring-projects/spring-data-build/blob/master/parent/pom.xml)  
[mvnrepository Spring Data Build General Parent Module](http://mvnrepository.com/artifact/org.springframework.data.build/spring-data-parent)  

- Kay-SR7 (org.springframework:spring-core:5.0.6.RELEASE)
```text
org.springframework.data.build:spring-data-build:2.0.7.RELEASE
org.springframework.data:spring-data-jpa:2.0.7.RELEASE
org.springframework.data:spring-data-mongodb:2.0.7.RELEASE
org.springframework.data:spring-data-redis:2.0.7.RELEASE
org.springframework.data:spring-data-elasticsearch:3.0.7.RELEASE
...
```

- Kay-SR6 (org.springframework:spring-core:5.0.5.RELEASE)
```text
org.springframework.data.build:spring-data-build:2.0.6.RELEASE
org.springframework.data:spring-data-jpa:2.0.6.RELEASE
org.springframework.data:spring-data-mongodb:2.0.6.RELEASE
org.springframework.data:spring-data-redis:2.0.6.RELEASE
org.springframework.data:spring-data-elasticsearch:3.0.6.RELEASE
...
```

- Ingalls-SR12 (org.springframework:spring-core:4.3.17.RELEASE)
```text
org.springframework.data.build:spring-data-build:1.9.12.RELEASE
org.springframework.data:spring-data-jpa:1.11.12.RELEASE
org.springframework.data:spring-data-mongodb:1.10.12.RELEASE
org.springframework.data:spring-data-redis:1.8.12.RELEASE
org.springframework.data:spring-data-elasticsearch:2.1.12.RELEASE
...
```

- Ingalls-SR11 (org.springframework:spring-core:4.3.15.RELEASE)
```text
org.springframework.data.build:spring-data-build:1.9.11.RELEASE
org.springframework.data:spring-data-jpa:1.11.11.RELEASE
org.springframework.data:spring-data-mongodb:1.10.11.RELEASE
org.springframework.data:spring-data-redis:1.8.11.RELEASE
org.springframework.data:spring-data-elasticsearch:2.1.11.RELEASE
...
```

## III. spring-cloud

parent -> child relations:
```text
spring-cloud-build -> spring-cloud-build-dependencies
spring-cloud-build ref spring-cloud-build-dependencies in it's dependencyManagement

spring-cloud-build -> spring-cloud-commons-parent -> spring-cloud-starter
spring-cloud-build(parent directory)/spring-cloud-dependencies-parent -> spring-cloud-commons(parent directory, spring-cloud-commons-parent)/spring-cloud-commons-dependencies
spring-cloud-build(parent directory)/spring-cloud-dependencies-parent -> spring-cloud-release(parent directory, spring-cloud-starter-build)/spring-cloud-dependencies
```

### 1. Spring Cloud Starter Parent
[github /spring-cloud/spring-cloud-starters/spring-cloud-starter-parent](https://github.com/spring-cloud/spring-cloud-starters/blob/master/spring-cloud-starter-parent/pom.xml)  
[mvnrepository Spring Cloud Starter Parent](http://mvnrepository.com/artifact/org.springframework.cloud/spring-cloud-starter-parent)  
[maven milestone](http://repo.spring.io/milestone/org/springframework/cloud/spring-cloud-starter-parent/)  

### 2. Spring Cloud Build Dependencies (spring-boot, spring-data version info)
[github /spring-cloud/spring-cloud-build/spring-cloud-build-dependencies](https://github.com/spring-cloud/spring-cloud-build/blob/master/spring-cloud-build-dependencies/pom.xml)  
[mvnrepository Spring Cloud Build Dependencies](http://mvnrepository.com/artifact/org.springframework.cloud/spring-cloud-build-dependencies)  
[maven milestone](http://repo.spring.io/milestone/org/springframework/cloud/spring-cloud-build-dependencies/)  

### 3. Spring Cloud Dependencies Parent (no version info)
[github /spring-cloud/spring-cloud-build/spring-cloud-dependencies-parent](https://github.com/spring-cloud/spring-cloud-build/blob/master/spring-cloud-dependencies-parent/pom.xml)  
[mvnrepository Spring Cloud Dependencies Parent](http://mvnrepository.com/artifact/org.springframework.cloud/spring-cloud-dependencies-parent)  
[maven milestone](http://repo.spring.io/milestone/org/springframework/cloud/spring-cloud-dependencies-parent/)  

### 4. Spring Cloud Dependencies (no version info)
[github /spring-cloud/spring-cloud-release/spring-cloud-dependencies](https://github.com/spring-cloud/spring-cloud-release/blob/master/spring-cloud-dependencies/pom.xml)  
[mvnrepository Spring Cloud Dependencies](http://mvnrepository.com/artifact/org.springframework.cloud/spring-cloud-dependencies)  
[maven milestone](http://repo.spring.io/milestone/org/springframework/cloud/spring-cloud-dependencies/)  

### 5. Spring Cloud Commons Dependencies (no version info)
[github /spring-cloud/spring-cloud-commons/spring-cloud-commons-dependencies](https://github.com/spring-cloud/spring-cloud-commons/blob/master/spring-cloud-commons-dependencies/pom.xml)  
[mvnrepository Spring Cloud Commons Dependencies](http://mvnrepository.com/artifact/org.springframework.cloud/spring-cloud-commons-dependencies)  
[maven milestone](http://repo.spring.io/milestone/org/springframework/cloud/spring-cloud-commons-dependencies/)  

- Finchley.RC1 (org.springframework:spring-core:5.0.5.RELEASE)
```text
org.springframework.boot:spring-boot:2.0.1.RELEASE
org.springframework.data:spring-data-releasetrain:Kay-SR6
...
```

- Edgware.SR3 (org.springframework:spring-core:4.3.14.RELEASE)
```text
org.springframework.boot:spring-boot:1.5.10.RELEASE
org.springframework.data:spring-data-releasetrain:Ingalls-SR10
...
```

## IV. spring-io-platform
[http://platform.spring.io/platform/](http://platform.spring.io/platform/)  

### 1. Spring IO Platform Bill of Materials
[github /spring-io/platform](https://github.com/spring-io/platform/blob/master/platform-bom/pom.xml)  
[mvnrepository Spring IO Platform Bill of Materials](http://mvnrepository.com/artifact/io.spring.platform/platform-bom)  

[Brussels-SR10 reference](https://docs.spring.io/platform/docs/Brussels-SR10/reference/htmlsingle/)  
[Brussels-SR9 reference](https://docs.spring.io/platform/docs/Brussels-SR9/reference/htmlsingle/)  

- Cairo-SR1 (org.springframework:spring-core:5.0.6.RELEASE)
```text
ch.qos.logback:logback-classic:1.2.3
com.fasterxml:classmate:1.3.4
com.fasterxml.jackson.core:jackson-databind:2.9.5
com.google.guava:guava:20.0
commons-io:commons-io:2.6
io.netty:netty-all:4.1.24.Final
javax.el:javax.el-api:3.0.1-b04
javax.servlet:javax.servlet-api:3.1.0
joda-time:joda-time:2.9.9
mysql:mysql-connector-java:5.1.46
org.apache.commons:commons-lang3:3.7
org.apache.curator:curator-recipes:2.12.0
org.apache.logging.log4j:log4j-core:2.10.0
org.hibernate:hibernate-validator:6.0.9.Final
org.javassist:javassist:[N/A]
org.mariadb.jdbc:mariadb-java-client:2.2.3
org.mockito:mockito-core:2.15.0
org.objenesis:objenesis:2.6
org.projectlombok:lombok:1.16.20
org.slf4j:slf4j-api:1.7.25
...
```

- Brussels-SR10 (org.springframework:spring-core:4.3.17.RELEASE)
```text
ch.qos.logback:logback-classic:1.1.11
com.fasterxml:classmate:1.3.4
com.fasterxml.jackson.core:jackson-databind:2.8.11.1
com.google.guava:guava:20.0
commons-io:commons-io:2.5
io.netty:netty-all:4.0.56.Final
javax.el:javax.el-api:2.2.5
javax.servlet:javax.servlet-api:3.1.0
joda-time:joda-time:2.9.9
mysql:mysql-connector-java:5.1.46
org.apache.commons:commons-lang3:3.5
org.apache.curator:curator-recipes:2.11.1
org.apache.logging.log4j:log4j-core:2.7
org.hibernate:hibernate-validator:5.3.6.Final
org.javassist:javassist:3.21.0-GA
org.mariadb.jdbc:mariadb-java-client:1.5.9
org.mockito:mockito-core:1.10.19
org.objenesis:objenesis:2.5.1
org.projectlombok:lombok:1.16.20
org.slf4j:slf4j-api:1.7.25
...
```

- Brussels-SR9 (org.springframework:spring-context-support:4.3.16.RELEASE)
```text
ch.qos.logback:logback-classic:1.1.11
com.fasterxml:classmate:1.3.4
com.fasterxml.jackson.core:jackson-databind:2.8.11
com.google.guava:guava:20.0
commons-io:commons-io:2.5
io.netty:netty-all:4.0.56.Final
javax.el:javax.el-api:2.2.5
javax.servlet:javax.servlet-api:3.1.0
joda-time:joda-time:2.9.9
mysql:mysql-connector-java:5.1.46
org.apache.commons:commons-lang3:3.5
org.apache.curator:curator-recipes:2.11.1
org.apache.logging.log4j:log4j-core:2.7
org.hibernate:hibernate-validator:5.3.6.Final
org.javassist:javassist:3.21.0-GA
org.mariadb.jdbc:mariadb-java-client:1.5.9
org.mockito:mockito-core:1.10.19
org.objenesis:objenesis:2.5.1
org.projectlombok:lombok:1.16.20
org.slf4j:slf4j-api:1.7.25
...
```

## V. Notice
We decide to let users choose log solution (logback or log4j2) and web container/server (undertow, jetty or tomcat) them self,
so **we excluded (by exclude them explicitly from spring-boot-starter-x and set them to provided scope) 
Spring Boot Logging Starter (org.springframework.boot:spring-boot-starter-logging) and 
Spring Boot Tomcat Starter (org.springframework.boot:spring-boot-starter-tomcat).**  

**You need to add these dependencies manually.**  

Artifacts using Spring Boot Logging Starter (org.springframework.boot:spring-boot-starter-logging) as compile dependency:  

- org.springframework.analytics:spring-analytics
- org.springframework.boot:spring-boot-starter
- org.springframework.boot:spring-boot-starter-test
- org.springframework.boot:spring-boot-starter-web
- org.springframework.boot.experimental:spring-boot-thin-tools
- org.springframework.cloud:spring-cloud-contract-converters
- org.springframework.cloud:spring-cloud-deployer-thin
- org.springframework.cloud:spring-cloud-function-stream
- org.springframework.cloud:spring-cloud-dataflow-core
- org.springframework.cloud:spring-cloud-dataflow-shell-core
- org.springframework.cloud:spring-cloud-dataflow-server-core
- org.springframework.cloud:spring-cloud-skipper-client
- org.springframework.cloud:spring-cloud-skipper-shell-commands
- org.springframework.cloud:spring-cloud-stream-binder-redis
- org.springframework.cloud:spring-cloud-stream-binder-rabbit-test-support
- org.springframework.cloud:spring-cloud-stream-test-support-internal

Artifacts using Spring Boot Tomcat Starter (org.springframework.boot:spring-boot-starter-tomcat) as compile dependency
- org.springframework.boot:spring-boot-starter-jersey
- org.springframework.boot:spring-boot-starter-web
