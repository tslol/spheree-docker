FROM typesense/typesense:27.0.rc27

# (Optional) Set a specific Typesense version
# ENV TYPESENSE_VERSION 0.25.1

# Create a directory for Typesense data
RUN mkdir -p /var/lib/typesense

# (Optional) Customize configuration
# COPY typesense.ini /etc/typesense/typesense.ini

# Expose the default Typesense port
EXPOSE 8108

# Set the entrypoint to start Typesense
ENTRYPOINT ["/usr/bin/typesense", "--data-dir", "/var/lib/typesense"]

