FROM continuumio/miniconda3:latest

RUN mkdir app

COPY /1.sh /app/1.sh

RUN chmod u+x /app/1.sh
RUN apt-get update
RUN apt-get install --no-install-recommends --no-install-suggests -q -y python
RUN pip install mlflow
RUN pip3 install boto3
RUN apt-get install --no-install-recommends --no-install-suggests -q -y python3-pymysql

CMD ["/app/1.sh"]
