FROM python:

RUN flask==1.1.4 \
    flask-mysql==1.5.2 \
    timeago==1.0.15 \
CMD flask run --host=0.0.0.0 -p 8080

