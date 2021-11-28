FROM openjdk:8-jdk

LABEL maintainer=eduardo@dotmac.com.br

# Set the TOMCAT_VERSION env variable
ARG TOMCAT_BASE_DIR=/opt/tomcat
ARG TOMCAT_RELEASE=8.5.73
ARG TOMCAT_VERSION=8
ARG TOMCAT_USER=tomcat
ARG DEPLOY_URL=https://github.com/eduardolmedeiros/middleware-utils/raw/master/deploy_samples/hello.war
ARG DEPLOY_FILE=hello.war

# Create user and group for tomcat
RUN useradd -U ${TOMCAT_USER}

# Download and install tomcat
RUN curl -O http://mirror.nbtelecom.com.br/apache/tomcat/tomcat-${TOMCAT_VERSION}/v${TOMCAT_RELEASE}/bin/apache-tomcat-${TOMCAT_RELEASE}.tar.gz && \
tar xzvf apache-tomcat-${TOMCAT_RELEASE}.tar.gz -C /opt && \
ln -s /opt/apache-tomcat-${TOMCAT_RELEASE} /opt/tomcat && \
rm -f /apache-tomcat-${TOMCAT_RELEASE}.tar.gz

# Deployment
RUN wget -O ${TOMCAT_BASE_DIR}/webapps/${DEPLOY_FILE} ${DEPLOY_URL} && \
chown -R ${TOMCAT_USER}:${TOMCAT_USER} /opt/apache-tomcat-${TOMCAT_RELEASE}

# Expose the port 8080
EXPOSE 8080

# Set the default command to run on boot
# This will boot TOMCAT
USER tomcat
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
