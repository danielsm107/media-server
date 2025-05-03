#!/bin/bash

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${GREEN}Creating necessary directories...${NC}"

# Create main directories
directories=(
    "config/jellyfin"
    "config/prowlarr"
    "config/sonarr"
    "config/radarr"
    "config/qbittorrent"
    "config/jellyseerr"
    "config/nginx"
    "config/nginx/letsencrypt"
    "config/bazarr"
    "media/movies"
    "media/TV shows"
    "media/downloads"
    "cache"
    "homarr/appdata"
    "games"
    "games2"
    "db/data"
)

for dir in "${directories[@]}"; do
    mkdir -p "$dir"
    echo "Created directory: $dir"
done

# Set permissions
echo -e "\n${GREEN}Setting permissions...${NC}"
chmod -R 755 config
chmod -R 755 media
chmod -R 755 cache
chmod -R 755 homarr
chmod -R 755 games
chmod -R 755 games2
chmod -R 755 db

# Create .env file if it doesn't exist
if [ ! -f .env ]; then
    echo -e "\n${YELLOW}Creating .env file from example...${NC}"
    cp .env.example .env
    echo -e "Please edit .env file with your configuration"
fi

echo -e "\n${GREEN}Setup completed!${NC}"
echo -e "${YELLOW}Next steps:${NC}"
echo "1. Edit the .env file with your configuration"
echo "2. Run 'docker-compose up -d' to start the stack"
echo "3. Configure each service through their web interfaces"
