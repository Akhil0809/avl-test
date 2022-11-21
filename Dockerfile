FROM ubuntu
ADD  flask-calculator /
RUN cd /
RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y pip
RUN pip install -r requirements.txt
CMD [ "python3", "app.py" ]
