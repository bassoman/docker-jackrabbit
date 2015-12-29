FROM bassoman/ubuntu-jdk:1.0.0
MAINTAINER Jon Lancelle <bassoman@gmail.com>

# Add and run the installer
ADD . /app
RUN /app/src/installer.sh

# Let's run the jackrabbit
VOLUME ["/app/jackrabbit"]
WORKDIR /app
EXPOSE 8080
ENTRYPOINT ["/usr/bin/java"]
CMD ["-jar", "/app/jackrabbit-standalone.jar"]
