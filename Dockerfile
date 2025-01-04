FROM python:3.9-slim

WORKDIR /app
COPY app.py .
RUN pip3 install flask
EXPOSE 8080

CMD [ "python3","app.py" ]
 