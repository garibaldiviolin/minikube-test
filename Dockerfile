FROM python:3.9.5-slim-buster

ENV PYTHONUNBUFFERED 1
ENV FLASK_APP app.py
ENV FLASK_RUN_HOST 0.0.0.0

RUN pip install flask

COPY app.py /

EXPOSE 5000

CMD ["flask", "run"]
