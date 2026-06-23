FROM python:3.10
EXPOSE 5000
WORKDIR /app 
# go into the folder within our docker image where we can put our flask app code

COPY requirements.txt .
RUN  pip install -r requirements.txt
COPY . . 
# this copies current directory code into current directory image i.e /app
CMD ["flask", "run", "--host", "0.0.0.0"] 
# it allows external client to the countainter to make request to flask app in the containter

