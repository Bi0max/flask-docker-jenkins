FROM python:3.6-alpine

ADD . /flask-app
WORKDIR /flask-app
RUN pip install -r requirements.txt

ENTRYPOINT ["python"]
CMD ["app.py"]
