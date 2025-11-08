# =======================================================
# Makefile for Flutter Project with Mock API Server
# =======================================================

# Colors for terminal output
RED    := \033[1;31m
GREEN  := \033[1;32m
YELLOW := \033[1;33m
CYAN   := \033[1;36m
NOCOLOR := \033[0m

# ---------------------------------------------
# Help Menu
# ---------------------------------------------
.PHONY: help
help:
	@echo -e "$(CYAN)================ Flutter Project Commands ================$(NOCOLOR)"
	@echo -e "$(GREEN)App Commands$(NOCOLOR)"
	@echo "  make run-dev           - Run Flutter app in development mode (starts mock server too)"
	@echo "  make run-prod          - Run Flutter app in production mode"
	@echo
	@echo -e "$(GREEN)Build Commands$(NOCOLOR)"
	@echo "  make build-apk-dev     - Build development APK"
	@echo "  make build-apk-prod    - Build production APK"
	@echo "  make build-runner      - Run build_runner with --delete-conflicting-outputs"
	@echo
	@echo -e "$(GREEN)Utility Commands$(NOCOLOR)"
	@echo "  make clean             - Clean Flutter project"
	@echo "  make analyze           - Run Flutter analyzer"
	@echo
	@echo -e "$(GREEN)Mock API Server Commands$(NOCOLOR)"
	@echo "  make server-start      - Start mock API server (using nodemon)"
	@echo "  make server-stop       - Stop mock API server"
	@echo "  make server-restart    - Restart mock API server"
	@echo -e "$(CYAN)=========================================================$(NOCOLOR)"

# ---------------------------------------------
# Run Flutter
# ---------------------------------------------
.PHONY: run-dev run-prod
run-dev: server-start
	@echo -e "$(YELLOW)Running Flutter app in development$(NOCOLOR)"
	flutter run --dart-define=ENVIRONMENT=development

run-prod:
	@echo -e "$(RED)Running Flutter app in production$(NOCOLOR)"
	flutter run --dart-define=ENVIRONMENT=production

# ---------------------------------------------
# Build APK targets
# ---------------------------------------------
.PHONY: build-apk-dev build-apk-prod
build-apk-dev:
	@echo -e "$(YELLOW)Building APK for development$(NOCOLOR)"
	flutter build apk --dart-define=ENVIRONMENT=development

build-apk-prod:
	@echo -e "$(RED)Building APK for production$(NOCOLOR)"
	flutter build apk --dart-define=ENVIRONMENT=production

# ---------------------------------------------
# Build Runner
# ---------------------------------------------
.PHONY: build-runner
build-runner:
	@echo -e "$(GREEN)Running build_runner$(NOCOLOR)"
	dart run build_runner build --delete-conflicting-outputs

# ---------------------------------------------
# Clean project
# ---------------------------------------------
.PHONY: clean
clean:
	@echo -e "$(GREEN)Cleaning Flutter project$(NOCOLOR)"
	flutter clean

# ---------------------------------------------
# Analyze with linter
# ---------------------------------------------
.PHONY: analyze
analyze:
	@echo -e "$(GREEN)Analyzing Flutter project$(NOCOLOR)"
	flutter analyze

# ---------------------------------------------
# Mock API Server (with nodemon)
# ---------------------------------------------
MOCK_API_DIR := mock-api
SERVER_SCRIPT := src/server.js

.PHONY: server-start server-stop server-restart

server-start:
	@echo -e "$(CYAN)Installing mock API dependencies...$(NOCOLOR)"
	cd $(MOCK_API_DIR) && npm install
	@echo -e "$(GREEN)Starting mock API server with nodemon...$(NOCOLOR)"
	cd $(MOCK_API_DIR) && nohup npx nodemon $(SERVER_SCRIPT) > server.log 2>&1 &
	@echo -e "$(GREEN)Mock API server started$(NOCOLOR)"

server-stop:
	@echo -e "$(RED)Stopping mock API server...$(NOCOLOR)"
	@pkill -f "$(SERVER_SCRIPT)" || echo "No running server found."

server-restart: server-stop server-start