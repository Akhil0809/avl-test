FROM alpine:3.5
COPY requirements.txt /usr/src/app/
RUN pip install -r requirements.txt
COPY app.py /usr/src/app/
COPY templates/index.html /usr/src/app/templates/
RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y pip

CMD ["python", "/usr/src/app/app.py"]
