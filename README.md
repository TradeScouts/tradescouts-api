# tradescouts-api

Django API backend for the TradeScouts SPA.

## Requirements
- Python 3.12 (recommended; works with >=3.9)
- [uv](https://github.com/astral-sh/uv) package manager

## Setup

Clone the repo and install dependencies:

```bash
git clone https://github.com/your-org/tradescouts-api.git
cd tradescouts-api

uv sync

This creates a local virtual environment (.venv) and installs Django.

Development

Apply migrations and start the dev server:
uv run python manage.py migrate
uv run python manage.py runserver

The app will be available at http://127.0.0.1:8000

Create a superuser to access the admin:

uv run python manage.py createsuperuser

Then log in at http://127.0.0.1:8000/admin

Environment Variables

Configuration values can be stored in a .env file at the project root:
DJANGO_SECRET_KEY=replace-this
DJANGO_ALLOWED_HOSTS=localhost,127.0.0.1

Common Commands

Add a new package:
uv add <package-name>

Upgrade Django:
uv lock --upgrade-package django
uv sync

Run tests:
uv run python manage.py test

