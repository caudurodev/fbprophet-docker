FROM python:3.8-slim-buster

EXPOSE 5000 8888

WORKDIR /app

COPY * /app/

RUN apt-get -y update  && apt-get install -y \
    python3-dev \
    apt-utils \
    python-dev \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade setuptools
RUN pip install -r requirements.txt

CMD python app.py
