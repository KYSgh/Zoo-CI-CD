# Base image
FROM openjdk:17

# 작업 디렉토리 설정
WORKDIR /tcat

# Jar 파일 복사
COPY zooTopic-0.0.1-SNAPSHOT.jar app.jar

# 컨테이너 실행시 자바 명령어로 jar 파일 실행
CMD ["java", "-jar", "app.jar"]

# Node.js를 지원하는 이미지를 기반으로 함
FROM node:latest

# 작업 디렉토리를 지정합니다.
WORKDIR /app

# 앱 소스를 추가합니다.
COPY my-zootopic-front-main /app

# 앱의 의존성을 설치합니다.
RUN npm install

# 애플리케이션을 실행합니다.
CMD ["npm", "start"]
