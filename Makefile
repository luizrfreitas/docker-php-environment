.PHONY: all clean

# Define colors
BLUE=\033[0;34m
ORANGE=\033[0;33m
NC=\033[0m

env:
	@printf "$(BLUE)Creating .env file...$(NC)\n";
	@echo "ENVIRONMENT=development" > .env; \
	echo "APP_PORT=8000" >> .env; \
	echo "DB_ROOT_PASSWORD=somerootpassword" >> .env; \
	echo "DB_ROOT_PASSWORD_TEST=somerootpasswordtest" >> .env; \
	echo "DB_DATABASE=somedatabase" >> .env; \
	echo "DB_DATABASE_TEST=somedatabasetest" >> .env; \
	echo "DB_USER=someuser" >> .env; \
	echo "DB_USER_TEST=someusertest" >> .env; \
	echo "DB_PASSWORD=somepassword" >> .env; \
	echo "DB_PASSWORD_TEST=somepasswordtest" >> .env; \
	echo "DB_PORT=3306" >> .env; \
	echo "DB_PORT_TEST=3307" >> .env; \
	echo "DB_TCP_PORT_TEST=3307" >> .env; \
	echo "WEB_PORT=80" >> .env; \
	echo "CACHE_PORT=6379" >> .env;\
	echo "DB_HOST=db" >> .env; \
	echo "DB_HOST_TEST=db_test" >> .env;
	@echo "$(BLUE).env file created!$(NC)";

clean-env:
	@printf "$(BLUE)Cleaning .env...$(NC)\n";
	@echo "# Use make env to fill this file!" > .env;
	@echo "$(BLUE).env cleaned!$(NC)";