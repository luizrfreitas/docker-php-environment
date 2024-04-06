# Docker PHP Environment

This repository provides a Docker-based PHP environment that can be used as a template for PHP projects. It sets up Docker containers for both development and production environments.

## Folder Structure

```
.
├── .docker/
│   └── php/
│       ├── xdebug/
│       │   └── 99-xdebug.ini
│       ├── Dockerfile.dev
│       └── Dockerfile.prod
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

There's two containers, `app`, representing the PHP, Composer, and Xdebug installation, and `db`, a MySQL container.

## Environment Variables

An example `.env` file is provided in `.env.example`. Modify it according to your project's requirements.
