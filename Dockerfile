FROM python:3.11

RUN pip install --update pip \
    && mkdir /app

ADD . /app

WORKDIR /app

RUN pip install -r requirements.txt

CMD python /app/main.py 
