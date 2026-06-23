FROM python:3.10
WORKDIR /app 
# go into the folder within our docker image where we can put our flask app code
COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade -r requirements.txt
COPY . . 
# this copies current directory code into current directory image i.e /app
CMD ["gunicorn", "--bind", "0.0.0.0:80", "app:create_app()"]
# it allows external client to the countainter to make request to flask app in the containter

