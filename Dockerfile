FROM python:3-slim
Maintainer swetha.mandalapu@gmail.com

RUN mkdir /home/sample

COPY testfile3.py /home/sample

RUN      apt-get update \
         && apt-get install -y python-pip \
	     && pip install --upgrade pip 
		 
RUN      apt-get -y install python3-bs4 
		           
RUN      apt-get -y install python3-requests 

CMD python /home/sample/testfile3.py
