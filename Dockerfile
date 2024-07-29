FROM typesense/typesense:27.0.rc27

# (Optional) Set a specific Typesense version
# ENV TYPESENSE_VERSION 0.25.1

# Create the data directory inside the container
RUN mkdir /data

# (Optional) Customize configuration
# COPY typesense.ini /etc/typesense/typesense.ini

# Expose the default Typesense port
EXPOSE 8108

# Set the entrypoint command to run Typesense with the specified options
CMD ["typesense-server", "--data-dir", "/data", "--api-key", $TYPESENSE_API_KEY, "--enable-cors"]
