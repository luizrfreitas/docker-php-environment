# Docker PHP Environment

This repository provides a Docker-based PHP environment that can be used as a template for PHP projects. It sets up Docker containers for both development and production environments.

## Folder Structure

```
.
├── .docker/
│   ├── php/
│   │   ├── xdebug/
│   │   │   └── 99-xdebug.ini
│   │   ├── Dockerfile.dev
│   │   └── Dockerfile.prod
│   └── web/
│       └── conf.d/
│           └── default.conf
├── db/
│   └── migrations
├── tests/
│   └── CustomTestCase.php
├── .env.example
├── .gitignore
├── composer.json
├── composer.lock
├── config.php
├── docker-compose.prod.yml
├── docker-compose.dev.yml
├── phinx.php
├── phpunit.xml
└── README.md
```

## Usage

To build the project for development, use the following command:

```bash
docker-compose -f docker-compose.prod.yml -f docker-compose.dev.yml up --build
```

## Docker Images

The Docker images include Composer. Additionally, the `Dockerfile.dev` installs Xdebug for debugging purposes.

## Docker Containers

The template includes a variety of containers to support different aspects of your project.

### Production Environment

- **`app`**: PHP 8.3 with Composer.

- **`db`**: MySQL latest version.

- **`web`**: Nginx latest version. Volume with `conf.d` config file uses default port for app.

- **`cache`**: Redis, bookworm version.

### Development Environment

- **`app` with Xdebug**: Same as production environment but installs Xdebug.

### Testing Environment

- **`db_test`**: MySQL with TCP port configuration.

## Environment Variables

An example `.env` file is provided in `.env.example`. Modify it according to your project's requirements. Makefile offers a default configuration for `.env`.
