FROM continuumio/miniconda3:latest
CMD mkdir /app
WORKDIR /app
COPY /1.sh /1.sh

RUN chmod u+x /app/1.sh \
    && apt-get update \
    && apt-get install --no-install-recommends --no-install-suggests -q -y python python3-pymysql \
    && pip install mlflow \
    && pip3 install boto3

CMD ["/1.sh"]
