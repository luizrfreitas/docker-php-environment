.PHONY: all clean

# Define colors
BLUE=\033[0;34m
ORANGE=\033[0;33m
NC=\033[0m

env:
	@printf "$(BLUE)Creating .env file...$(NC)\n";
	@printf "$(BLUE)Want to fill .env file with default values? (Y/n)$(NC)\n"; \
	read ANSWER; \
	ANSWER=$${ANSWER:-Y}; \
	if [ $$ANSWER = Y ]; then \
		make -s default-env; \
	else \
		printf "Value for ENVIRONMENT $(ORANGE)(default: development)$(NC): "; \
		read ENVIRONMENT; \
		ENVIRONMENT=$${ENVIRONMENT:-development}; \
		echo "ENVIRONMENT=$$ENVIRONMENT" > .env; \
		printf "Value for APP_NAME $(ORANGE)(default: app)$(NC): "; \
		read APP_NAME; \
		APP_NAME=$${APP_NAME:-app}; \
		echo "APP_NAME=$$APP_NAME" >> .env; \
		printf "Value for APP_PORTS $(ORANGE)(default: 8000:8000)$(NC): "; \
		read APP_PORTS; \
		APP_PORTS=$${APP_PORTS:-8000:8000}; \
		echo "APP_PORTS=$$APP_PORTS" >> .env; \
		printf "Value for DB_NAME $(ORANGE)(default: database)$(NC): "; \
		read DB_NAME; \
		DB_NAME=$${DB_NAME:-database}; \
		echo "DB_NAME=$$DB_NAME" >> .env; \
		printf "Value for DB_USER $(ORANGE)(default: root)$(NC): "; \
		read DB_USER; \
		DB_USER=$${DB_USER:-root}; \
		echo "DB_USER=$$DB_USER" >> .env; \
		printf "Value for DB_ROOT_PASSWORD $(ORANGE)(default: root)$(NC): "; \
		read DB_ROOT_PASSWORD; \
		DB_ROOT_PASSWORD=$${DB_ROOT_PASSWORD:-root}; \
		echo "DB_ROOT_PASSWORD=$$DB_ROOT_PASSWORD" >> .env; \
		printf "Value for DB_PASSWORD $(ORANGE)(default: root)$(NC): "; \
		read DB_PASSWORD; \
		DB_PASSWORD=$${DB_PASSWORD:-root}; \
		echo "DB_PASSWORD=$$DB_PASSWORD" >> .env; \
		printf "Value for DB_PORT $(ORANGE)(default: 3306)$(NC): "; \
		read DB_PORT; \
		DB_PORT=$${DB_PORT:-3306}; \
		echo "DB_PORT=$$DB_PORT" >> .env; \
	fi
	@echo "$(BLUE).env file created!$(NC)"; \

default-env:
	@echo "ENVIRONMENT=development" > .env; \
	echo "APP_NAME=app" >> .env; \
	echo "APP_PORTS=8000" >> .env; \
	echo "DB_NAME=database" >> .env; \
	echo "DB_USER=root" >> .env; \
	echo "DB_ROOT_PASSWORD=root" >> .env; \
	echo "DB_PASSWORD=root" >> .env; \
	echo "DB_PORT=3306" >> .env; \
	echo "DB_ROOT_PASSWORD_TEST=root" >> .env; \
	echo "DB_DATABASE_TEST=database_test" >> .env; \
	echo "DB_USER_TEST=root" >> .env; \
	echo "DB_PASSWORD_TEST=root" >> .env; \
	echo "DB_TCP_PORT_TEST=3307" >> .env; \
	echo "DB_PORT_TEST=3307" >> .env; \
	echo "WEB_PORT=80" >> .env; \
	echo "CACHE_PORT=6379" >> .env;

clean-env:
	@echo "Cleaning up..."
	@rm -f .env
	@echo "Cleaned up."
