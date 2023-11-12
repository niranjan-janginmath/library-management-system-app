FROM python:
RUN /home/app
COPY . /home/app
WORKDIR /home/app
RUN apt-get update && apt-get install -y \
    gcc \
    python3-dev \
    default-libmysqlclient-dev \
    build-essential \
    python3-pip \


RUN pip install -r requirements.txt
CMD flask run --host=0.0.0.0 -p 8080

