FROM alpine:3.7

EXPOSE 5000
CMD ["python", "app.py"]

ADD . /code
WORKDIR /code

RUN apk add --no-cache python \
    python-dev \
    py-pip &&\
    pip install -r requirements.txt
