FROM python

Maintainer swetha.mandalapu@gmail.com

COPY . /app

RUN      apt-get update \
         && apt-get install -y python-pip \
         && pip install --upgrade pip 

RUN  make /app

CMD [“python”, “/app/prime.py”]
