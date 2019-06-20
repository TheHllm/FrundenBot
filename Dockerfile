FROM python:3.6-alpine

WORKDIR /app
RUN apk add --update --no-cache build-base libffi-dev openssl-dev

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY main.py main.py

USER nobody
CMD ["python3", "main.py"]
