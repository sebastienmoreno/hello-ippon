FROM openjdk:8 AS BUILD_IMAGE
COPY HelloIppon.java /
RUN javac HelloIppon.java


FROM openjdk:8-jre
COPY --from=BUILD_IMAGE /*.class /
CMD ["java","HelloIppon"]