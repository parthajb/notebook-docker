
# Dockerized Services Project

This project provides a Docker setup for multiple services, including Netdata, JupyterLab, PostgreSQL, and Nginx.

## Project Structure

\```
project-root/
│
├── docker-compose.yml       # Main Docker Compose configuration file
│
├── nginx/
│   ├── nginx.conf           # Nginx configuration file
│   └── html/                # Static HTML files for Nginx
│       └── index.html      
│
├── jupyter/
│   ├── Dockerfile           # Dockerfile for JupyterLab setup
│   ├── jupyterlab_config.py # JupyterLab configuration file
│   └── notebooks/           # Directory to store Jupyter notebooks
│
├── scripts/
│   └── backup_to_github.sh  # Script to backup notebooks to GitHub
│
└── postgres/
    └── data/                # PostgreSQL data directory
\```

## Setup Instructions

1. Clone/Download the project to your server.
2. Navigate to the project directory.
3. Run `docker-compose up -d` to start all services.
4. Access the services via the following URLs:
   - Netdata: `http://<YOU_IP_OR_DOMAIN>:1111`
   - JupyterLab: `http://<YOU_IP_OR_DOMAIN>:8888`
   - PostgreSQL: `<YOU_IP_OR_DOMAIN>:5432`
   - Nginx (Static Page): `http://<YOU_IP_OR_DOMAIN>/`

5. Set up the GitHub repository and SSH keys for the backup script:
   - Initialize a Git repo in the `notebooks` directory.
   - Set the remote to your GitHub repository.
   - Set up SSH keys for password-less push to GitHub.
   
6. Add the backup script to your crontab to run hourly:
   \```
   0 * * * * /path/to/project-root/scripts/backup_to_github.sh
   \```

## Troubleshooting

- Ensure that Docker and Docker Compose are installed and running on the server.
- Check the logs of any service that's not working using the command: `docker-compose logs <service_name>`.
- If JupyterLab password is not working, ensure the configuration file is correctly loaded in the container. Check the Dockerfile in the `jupyter` directory.
