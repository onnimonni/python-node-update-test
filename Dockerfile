FROM node:16.19.1 AS frontend
ADD version.js /build/
RUN node /build/version.js

FROM python:3.9.11
ADD version.py .
COPY --from=frontend /build/ /build/
RUN python version.py
