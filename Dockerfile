# Use the official PostgreSQL image from the Docker Hub
FROM postgres:15

# Set environment variables for the PostgreSQL database
ENV POSTGRES_USER=fazzyuser
ENV POSTGRES_PASSWORD=yourpassword
ENV POSTGRES_DB=blogdb

# Copy any custom SQL files or scripts to initialize the database
COPY ./initdb/ /docker-entrypoint-initdb.d/

# Expose the default PostgreSQL port
EXPOSE 5432
