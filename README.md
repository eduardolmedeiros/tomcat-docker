Apache Tomcat 8 with OpenJDK 8
====================================

1. Starting Apache Tomcat
==========================

```sh
docker run -it -p 8080:8080 emedeiros/tomcat
```

2. Console access:
==================

## Details to access web-console:

* URL:  http://your.ip:8080/manager/html
* User: tomcat
* Password: tomcat

2. Deploy test
==================

* URL: http://your.ip:8080/hello
