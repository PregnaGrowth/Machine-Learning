FROM python:3.9

WORKDIR /app

COPY requirements.txt /app/

RUN pip install --no-cache-dir -r requirements.txt

COPY . /app/

EXPOSE 8080

RUN pip install gunicorn

CMD ["gunicorn", "-b", "0.0.0.0:8080", "app:app"]
