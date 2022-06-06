FROM continuumio/miniconda3:latest

RUN mkdir app

COPY ./1.sh /app/1.sh

RUN chmod u+x /app/1.sh
    apt-get update \
    apt-get install --no-install-recommends --no-install-suggests -q -y \
            python \
            mlflow \
            boto3 \
            pymysql

CMD ["/app/1.sh"]
