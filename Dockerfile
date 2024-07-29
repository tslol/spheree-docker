FROM typesense/typesense:27.0.rc27

# (Optional) Set a specific Typesense version
# ENV TYPESENSE_VERSION 0.25.1

# Create the data directory inside the container
RUN mkdir /data

# Copy the start script into the container
COPY start.sh /start.sh

# Make the start script executable
RUN chmod +x /start.sh

# Set the entrypoint command to run the start script
ENTRYPOINT ["/start.sh"]
