FROM ubuntu:17.04
MAINTAINER Andrei Kamenev "ankamene@microsoft.com"
RUN apt-get update -y && \
    apt-get install -y python3-pip python3-dev
COPY requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip3 install -r requirements.txt
COPY . /app
EXPOSE 5000
ENTRYPOINT ["python3", "app.py"]