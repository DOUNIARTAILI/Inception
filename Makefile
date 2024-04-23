# Makefile for managing Docker Compose for Nginx and WordPress

# Specify the docker-compose command line
DC = docker-compose

# Default target
all: build up

# Build the docker images
build:
	@echo "Building docker images..."
	$(DC) build

# Start the services
up:
	@echo "Starting services..."
	$(DC) up -d

# Stop the services
down:
	@echo "Stopping services..."
	$(DC) down

# View logs
logs:
	@echo "Showing docker logs..."
	$(DC) logs

# Remove containers, networks, volumes, and images created by 'up'
clean:
	@echo "Cleaning all services..."
	$(DC) down --rmi all -v

# Rebuild and restart the services
rebuild: down build up

# List all running containers
ps:
	@echo "Currently running containers..."
	$(DC) ps

.PHONY: all build up down logs clean rebuild ps
