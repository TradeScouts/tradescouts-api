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

Configuration values can be stored in a `.env` file at the project root:

```env
DJANGO_SECRET_KEY=replace-this
DJANGO_ALLOWED_HOSTS=localhost,127.0.0.1
```

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

---

## License
MIT
