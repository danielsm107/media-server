# Docker Media Server Stack

A comprehensive media server setup using Docker, featuring multiple services for streaming, downloading, and managing media content.

## 🚀 Features

This stack includes the following services:
- **Jellyfin**: Media streaming server
- **Sonarr**: TV shows management
- **Radarr**: Movies management
- **Prowlarr**: Indexer management
- **qBittorrent**: Download client
- **Jellyseerr**: Request management system
- **Nginx Proxy Manager**: Reverse proxy
- **FlareSolverr**: Proxy tool
- **Homarr**: Dashboard for services
- **Bazarr**: Subtitle management
- **Cloudflare DDNS**: Dynamic DNS updater
- **GameVault**: Game management system

## 📋 Prerequisites

- Docker
- Docker Compose
- At least 4GB RAM
- Sufficient storage space for media
- Linux-based system (recommended)

## 🔧 Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/media-server.git
   cd media-server
   ```

2. Copy the example environment file:
   ```bash
   cp .env.example .env
   ```

3. Edit the .env file with your settings:
   ```bash
   nano .env
   ```

4. Create necessary directories:
   ```bash
   mkdir -p {config,media,cache}
   ```

5. Start the stack:
   ```bash
   docker-compose up -d
   ```

## 🔌 Port Configuration

- Jellyfin: 8096
- Prowlarr: 9696
- Sonarr: 8989
- Radarr: 7878
- qBittorrent: 8081
- Jellyseerr: 5055
- Nginx Proxy Manager: 80, 443, 81
- FlareSolverr: 8191
- Homarr: 7575
- Bazarr: 6767
- GameVault: 8080

## 📁 Directory Structure

```
.
├── cache/              # Cache files
├── config/            # Application configs
├── media/             # Media files
│   ├── movies/
│   ├── TV shows/
│   └── downloads/
├── homarr/           # Homarr configuration
├── docker-compose.yml
├── .env
└── README.md
```

## ⚙️ Configuration

1. **Nginx Proxy Manager**:
   - Access at http://localhost:81
   - Default credentials:
     - Email: admin@example.com
     - Password: changeme

2. **Media Services**:
   - Configure Sonarr, Radarr, and Prowlarr to work together
   - Set up Jellyfin libraries
   - Configure Jellyseerr to connect with Jellyfin

## 🔒 Security Considerations

1. Always change default passwords
2. Use strong passwords in .env file
3. Keep Docker and all containers updated
4. Use reverse proxy with SSL for remote access
5. Restrict ports exposure to needed ones only
6. Regular backups of configuration

## 🆘 Troubleshooting

- Check container logs: `docker-compose logs [service_name]`
- Ensure correct permissions on mounted volumes
- Verify network connectivity between containers
- Check available disk space

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.
