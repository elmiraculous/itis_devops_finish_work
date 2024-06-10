# Stage 1: Build stage
FROM python:3.10.10-slim AS builder

WORKDIR /app

COPY requirements.txt .
RUN pip install --user -r requirements.txt

COPY . .
COPY etc/loki/local-config.yaml /etc/loki/local-config.yaml

# Stage 2: Final stage
FROM python:3.10.10-slim

WORKDIR /app
COPY --from=builder /root/.local /root/.local
COPY --from=builder /app /app

ENV PATH=/root/.local/bin:$PATH
ENV DJANGO_SETTINGS_MODULE=coolsite.settings
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
