FROM python:3.9.16
ADD version.py .
RUN python version.py