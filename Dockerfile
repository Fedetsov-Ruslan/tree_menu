FROM python:3.12.2-slim-bullseye

ENV PYTHONUNBUFFERED=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app
RUN apt-get update && apt-get install -y \
    postgresql-client \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*
COPY entrypoint.sh /code/entrypoint.sh
RUN chmod +x /code/entrypoint.sh
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 8000
CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000" ]