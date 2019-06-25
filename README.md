# Apache Tomcat 8 with OpenJDK 8

## Building stage

### A description of the variables for the building stage

```
| Variables       | Description    |
|----------------------------------|
| TOMCAT_BASE_DIR | base dir       |
| TOMCAT_RELEASE  | release        |
| TOMCAT_VERSION  | version        |
| TOMCAT_USER     | user           |
| DEPLOY_URL      | deploy src url |
| DEPLOY_FILE     | deploy file    |
```

### Building a docker image
```
git clone https://github.com/eduardolmedeiros/tomcat-docker.git
docker build -t emedeiros/tomcat:<tag> .
```

### Building a docker image using variables
```
docker build --build-arg "TOMCAT_RELEASE=8.5.41" -t emedeiros/tomcat:<tag> .
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

## 2. Deploy default

* URL: http://your.ip:8080/hello