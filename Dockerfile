FROM python:3.12-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

RUN apt-get update -y && apt-get install -y --no-install-recommends \
    ca-certificates curl && rm -rf /var/lib/apt/lists/*

# Install uv
RUN pip install --no-cache-dir uv

WORKDIR /app

# Lock-aware install for speed & reproducibility
COPY pyproject.toml uv.lock ./
RUN uv sync

# Bring in the source last for better layer caching
COPY . .

EXPOSE 8000
CMD ["uv","run","python","manage.py","runserver","0.0.0.0:8000"]
