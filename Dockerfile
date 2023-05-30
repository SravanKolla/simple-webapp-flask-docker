FROM Ubuntu
RUN apt-get update
RUN apt-get install -y python-is-python3
RUN apt-get install python3-pip
RUN pip install flask
RUN pip install flask-mysql
COPY . /opt/source-code
ENTRYPOINT FLASK_APP=/opt/source-code/sravan.py flask run --host=0.0.0.0