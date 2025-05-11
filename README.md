# env-airflow

Docker-based development environment for Apache Airflow, optimized for handling spatial datasets.

## Getting Started

### Build the Docker Image

Build the Docker image using the following command:

```bash
docker build -f Dockerfile.airflow -t extended-airflow:3.0.0 .
```

### Start the Container

After building the image, start the container with Docker Compose:

```bash
docker compose up
```

### Access the Airflow UI

Once the container is running, access the Airflow UI by navigating to the appropriate URL in your browser (e.g., `http://localhost:8080`).

### Develop DAGs

To develop DAGs, you can connect to the `airflow-scheduler` container. Using VS Code, follow these steps:

1. Install the [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension.
2. Open the Command Palette (`Ctrl+Shift+P` or `Cmd+Shift+P` on macOS) and select **Remote-Containers: Attach to Running Container**.
3. Choose the `airflow-scheduler` container from the list.
4. Once connected, navigate to the `/workdir`.

### Connect to the Database

With DBeaver use the following connection details:

- Host: `localhost`
- Port: `5432` (or the port configured in your `docker-compose.yml`)
- Database: `airflow`
- Username: `airflow`
- Password: `airflow`

Add check on `Show all databases`

### Change Color in VS Code Appearance

To customize the color theme of the VS Code window, update the `.vscode/settings.json` file with the following configuration:

```json
{
    "workbench.colorCustomizations": {
        "titleBar.activeBackground": "Color of your choice in hex"
    }
}
```

## Have fun :)
