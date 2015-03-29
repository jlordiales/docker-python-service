FROM gliderlabs/alpine:3.1

EXPOSE 5000
CMD ["python", "app.py"]

ADD . /code
WORKDIR /code

RUN apk-install python \
    python-dev \
    py-pip &&\
    pip install -r requirements.txt
