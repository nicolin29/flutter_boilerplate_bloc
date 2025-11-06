# Makefile for Flutter project with environment shortcuts

# Colors for terminal output
GREEN  := \033[0;32m
YELLOW := \033[1;33m
NC     := \033[0m

# ---------------------------------------------
# Default help command
# ---------------------------------------------
.PHONY: help
help:
	@echo -e "$(GREEN)Flutter Project Makefile$(NC)"
	@echo "Usage:"
	@echo "  make run-dev       # Run app in development"
	@echo "  make run-prod      # Run app in production"
	@echo "  make build-apk-dev       # Build APK for development"
	@echo "  make build-apk-prod      # Build APK for production"
	@echo "  make clean         # Clean project"

# ---------------------------------------------
# Run targets
# ---------------------------------------------
.PHONY: run-dev run-prod
run-dev:
	@echo -e "$(YELLOW)Running Flutter app in development$(NC)"
	flutter run --dart-define=ENVIRONMENT=development

run-prod:
	@echo -e "$(YELLOW)Running Flutter app in production$(NC)"
	flutter run --dart-define=ENVIRONMENT=production

# ---------------------------------------------
# Build APK targets
# ---------------------------------------------
.PHONY: build-apk-dev build-apk-prod
build-apk-dev:
	@echo -e "$(YELLOW)Building APK for development$(NC)"
	flutter build apk --dart-define=ENVIRONMENT=development

build-apk-prod:
	@echo -e "$(YELLOW)Building APK for production$(NC)"
	flutter build apk --dart-define=ENVIRONMENT=production

# ---------------------------------------------
# Clean project
# ---------------------------------------------
.PHONY: clean
clean:
	@echo -e "$(YELLOW)Cleaning Flutter project$(NC)"
	flutter clean
