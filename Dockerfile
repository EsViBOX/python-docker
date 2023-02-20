# syntax=docker/dockerfile:1

FROM python:3.9-slim-bullseye
WORKDIR /app
COPY requirements.txt requirements.txt
RUN apt-get update && apt-get --no-install-recommends install gcc libmariadb-dev python3-dev -y
RUN pip3 install --no-cache-dir -r requirements.txt
COPY . .
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
