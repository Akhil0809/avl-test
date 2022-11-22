FROM ubuntu
ADD  avl-test /
RUN cd /
RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y pip
RUN pip install -r requirements.txt
CMD [ "python3", "app.py" ]
