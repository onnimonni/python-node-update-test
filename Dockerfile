FROM node:19.6.1 AS frontend
ADD version.js /build/
RUN node /build/version.js

FROM python:3.11.2
ADD version.py .
COPY --from=frontend /build/ /build/
RUN python version.py
