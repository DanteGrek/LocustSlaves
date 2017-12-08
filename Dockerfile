FROM python:2.7

WORKDIR /tests

ADD . /tests

RUN pip install -r requirements.txt

ENV NAME locust

EXPOSE 5557 5558 8089

#CMD ["locust", "--master"]
ENTRYPOINT ["/usr/local/bin/locust", "-f", "/tests/locustfile.py"]