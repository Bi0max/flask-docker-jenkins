FROM python:3.6-alpine

EXPOSE 5000

RUN mkdir /flask-app
WORKDIR /flask-app

COPY requirements.txt /flask-app/requirements.txt
RUN pip install -r requirements.txt

COPY . /flask-app

RUN echo $(pwd) && echo $(ls)

CMD ["/bin/sh", "-c", "echo $(pwd) && echo $(ls) && echo $(cat app.py) && python app.py"]

