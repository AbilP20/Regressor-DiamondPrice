FROM python:3.11-slim-bullseye

WORKDIR /app

COPY . /app

RUN apt update -y && apt install awscli -y

RUN apt-get update && pip install -r requirements.txt

CMD ["python3","application.py"]