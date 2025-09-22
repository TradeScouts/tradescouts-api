# tradescouts-api

Django API backend for the TradeScouts SPA.

## Requirements
- Python 3.12 (recommended; works with >=3.12)
- [uv](https://github.com/astral-sh/uv) package manager
- Django 5.2.6
- PostgreSQL (runs via Docker Compose for local dev)

## Setup

Clone the repo and install dependencies:

```bash
git clone https://github.com/your-org/tradescouts-api.git
cd tradescouts-api

uv sync
```

This creates a local virtual environment (`.venv`) and installs Django.

## Development

Apply migrations and start the dev server:

```bash
uv run python manage.py migrate
uv run python manage.py runserver
```

The app will be available at [http://127.0.0.1:8000](http://127.0.0.1:8000).

Create a superuser to access the admin:

```bash
uv run python manage.py createsuperuser
```

Then log in at [http://127.0.0.1:8000/admin](http://127.0.0.1:8000/admin).

## Environment Variables

Configuration values are loaded from a .env file at the project root.
Never commit .env; instead, commit .env.example as a template.

Example .env.example:

```env
# Django settings
DJANGO_SECRET_KEY=replace-me-with-a-random-string
DJANGO_ALLOWED_HOSTS=localhost,127.0.0.1

# Database (local dev with Docker Compose)
DATABASE_URL=postgres://postgres:postgres@db:5432/tradescouts
```

## Generating a real secret key (for your personal .env)

- Run once locally:
```bash
uv run python -c "from django.core.management.utils import get_random_secret_key; print(get_random_secret_key())"
```

- Copy the output into your .env:
```env
DJANGO_SECRET_KEY=your-generated-secret
```

- Each developer generates their own key for local dev.
- For staging/production, a separate key is generated and injected as a Kubernetes Secret.

## Common Commands

- Add a new package:
```bash
uv add <package-name>
```

- Upgrade Django:
```bash
uv lock --upgrade-package django
uv sync
```

- Run tests:
```bash
uv run python manage.py test
```

- Run database shell (requires Postgres client tools):
```bash
docker compose exec api uv run python manage.py dbshell
```
---

## License
MIT
