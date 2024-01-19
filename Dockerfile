#Dockerfile
#docker build -t Udemy /var/lib/jenkins/workspace/Docker-cmd-in-jenkins/Udemy
#docker run -d -p 5000:5000 Udemy

FROM python:3.10-slim-buster
ADD . /Udemy
WORKDIR /Udemy
RUN pip install --no-cache-dir -r requirements.txt
CMD [ "python", "./run.py" ]
