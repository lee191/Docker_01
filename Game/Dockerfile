# 빌드 단계
FROM node:16 AS build-stage

# 작업 디렉토리 설정
WORKDIR /app

# 소스 코드 복제 및 의존성 설치
RUN git clone https://github.com/maxwellito/breaklock.git .
RUN npm install
RUN npm run build

# 실행 단계
FROM python:3.9-slim

# 작업 디렉토리 설정
WORKDIR /app

# 빌드된 파일 복사
COPY --from=build-stage /app/public /app/public

# 심볼릭 링크 생성
RUN ln -s /app/public /app/breaklock

# Python HTTP 서버 실행
EXPOSE 8000
CMD ["python3", "-m", "http.server", "8000"]
