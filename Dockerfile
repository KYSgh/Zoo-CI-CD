# Base image
FROM openjdk:17

# 작업 디렉토리 설정
WORKDIR /tcat

# Jar 파일 복사
COPY zooTopic-0.0.1-SNAPSHOT.jar app.jar

# 컨테이너 실행시 자바 명령어로 jar 파일 실행
CMD ["java", "-jar", "app.jar"]
