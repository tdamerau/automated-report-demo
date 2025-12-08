# Use your base image (already has R, Quarto, common packages)
FROM ghcr.io/tdamerau/dataanalysis/r-analytics-base:latest

# Copy your report into the container
COPY report.qmd /workspace/

# Set working directory
WORKDIR /workspace

# Render the report when container runs
CMD ["quarto", "render", "report.qmd"]