# Apache Tomcat 8 with OpenJDK 8

## Building stage

### Building a docker image
```
git clone https://github.com/eduardolmedeiros/tomcat-docker.git
docker build -t emedeiros/tomcat:<tag> .
```

### Building a docker image using variables
```
docker build --build-arg "TOMCAT_RELEASE=8.5.41" -t tomcat:<tag> .
```

## 1. Starting Apache Tomcat

### 1.1 via docker cli

```
docker run -it -p 8080:8080 emedeiros/tomcat
```

### 1.2 via docker-compose

```
docker-compose up -d
```

## 2. Console access:


### Details to access web-console:

* URL:  http://your.ip:8080/manager/html
* User: tomcat
* Password: tomcat

## 2. Deploy test

* URL: http://your.ip:8080/hello