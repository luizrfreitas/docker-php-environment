.PHONY: all clean

# Define colors
BLUE=\033[0;34m
ORANGE=\033[0;33m
NC=\033[0m

env:
	@printf "$(BLUE)Creating .env file...$(NC)\n";
	@printf "Value for ENVIRONMENT $(ORANGE)(default: development)$(NC): "; \
	read ENVIRONMENT; \
	ENVIRONMENT=$${ENVIRONMENT:-development}; \
	echo "ENVIRONMENT=$$ENVIRONMENT" > .env;
	@printf "Value for APP_NAME $(ORANGE)(default: app)$(NC): "; \
	read APP_NAME; \
	APP_NAME=$${APP_NAME:-app}; \
	echo "APP_NAME=$$APP_NAME" >> .env;
	@printf "Value for APP_PORTS $(ORANGE)(default: 8000:8000)$(NC): "; \
	read APP_PORTS; \
	APP_PORTS=$${APP_PORTS:-8000:8000}; \
	echo "APP_PORTS=$$APP_PORTS" >> .env;
	@printf "Value for DB_NAME $(ORANGE)(default: database)$(NC): "; \
	read DB_NAME; \
	DB_NAME=$${DB_NAME:-database}; \
	echo "DB_NAME=$$DB_NAME" >> .env;
	@printf "Value for DB_USER $(ORANGE)(default: root)$(NC): "; \
	read DB_USER; \
	DB_USER=$${DB_USER:-root}; \
	echo "DB_USER=$$DB_USER" >> .env;
	@printf "Value for DB_ROOT_PASSWORD $(ORANGE)(default: root)$(NC): "; \
	read DB_ROOT_PASSWORD; \
	DB_ROOT_PASSWORD=$${DB_ROOT_PASSWORD:-root}; \
	echo "DB_ROOT_PASSWORD=$$DB_ROOT_PASSWORD" >> .env;
	@printf "Value for DB_PASSWORD $(ORANGE)(default: root)$(NC): "; \
	read DB_PASSWORD; \
	DB_PASSWORD=$${DB_PASSWORD:-root}; \
	echo "DB_PASSWORD=$$DB_PASSWORD" >> .env;
	@printf "Value for DB_PORT $(ORANGE)(default: 3306)$(NC): "; \
	read DB_PORT; \
	DB_PORT=$${DB_PORT:-3306}; \
	echo "DB_PORT=$$DB_PORT" >> .env;
	@echo "$(BLUE).env file created!$(NC)";

clean-env:
	@echo "Cleaning up..."
	@rm -f .env
	@echo "Cleaned up."
