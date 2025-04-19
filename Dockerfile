FROM python:3.9.22-alpine3.21

WORKDIR /simple-flask-app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 5005

CMD ["python", "app.py"]
