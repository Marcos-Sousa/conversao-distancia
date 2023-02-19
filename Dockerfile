FROM python:3.8
EXPOSE 5000

WORKDIR /app
COPY . .

RUN pip install -r requirements.txt && pip install gunicorn

CMD ["gunicorn", "--workers=1", "--bind", "0.0.0.0:5000", "--log-level=info", "app:app"]