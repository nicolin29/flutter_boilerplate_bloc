# Makefile for Flutter project with environment shortcuts

# Colors for terminal output
RED    := \033[1;31m
GREEN  := \033[1;32m
YELLOW := \033[1;33m
NOCOLOR     := \033[0m

# ---------------------------------------------
# Default help command
# ---------------------------------------------
.PHONY: help
help:
	@echo -e "$(GREEN)Flutter Project Makefile$(NOCOLOR)"
	@echo "Usage:"
	@echo "  make run-dev		# Run app in development"
	@echo "  make run-prod		# Run app in production"
	@echo "  make build-apk-dev	# Build APK for development"
	@echo "  make build-apk-prod	# Build APK for production"
	@echo "  make build-runner	# Build Runner with delete conflicting outputs"
	@echo "  make clean		# Clean project"
	@echo "  make analyze		# Analyze project with linter"

# ---------------------------------------------
# Run targets
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
	@echo -e "$(GREEN)Build Runner with Delete Conflicting Outputs$(NOCOLOR)"
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
# Mock API server management (with nodemon)
# ---------------------------------------------
MOCK_API_DIR := mock-api
SERVER_SCRIPT := server.js

.PHONY: server-start server-stop server-restart

server-start:
	@echo "Installing dependencies..."
	cd $(MOCK_API_DIR) && npm install
	@echo "Starting mock API server with nodemon..."
	# Start nodemon in background
	cd $(MOCK_API_DIR) && nohup npx nodemon $(SERVER_SCRIPT) > server.log 2>&1 &
	@echo "Mock API server started"

server-stop:
	@echo "Stopping mock API server..."
	@pkill -f "$(SERVER_SCRIPT)" || echo "No running server found"

server-restart: server-stop server-start