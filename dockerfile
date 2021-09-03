#FROM python:3.9.7-slim-bullseye
FROM ubuntu:20.04

RUN mkdir -p /opt/AbBOT
WORKDIR /opt/AbBOT

COPY ["requirements.txt", "/opt/AbBOT/"]
RUN apt-get update; apt-get install -y pip; apt-get install -y python; apt-get install -y google-chrome-stable
RUN pip install -r /opt/AbBOT/requirements.txt