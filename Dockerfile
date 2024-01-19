#Dockerfile
#docker build -t Udemy .
#docker run -d -p 5000:5000 Udemy

FROM python:3.10-slim-buster
ADD . /Udemyapp
WORKDIR /Udemyapp
RUN pip install --no-cache-dir -r requirements.txt
CMD [ "python", "./run.py" ]
