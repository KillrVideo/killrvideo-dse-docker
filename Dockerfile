FROM luketillman/datastax-enterprise:4.8.10

# Copy schema files into /opt/killrvideo-data
COPY [ "lib/killrvideo-data/schema.cql", "lib/killrvideo-data/search/*.xml", "/opt/killrvideo-data/" ]

# Copy bootstrap script(s) and make executable
COPY [ "bootstrap.sh", "/bootstrap.sh" ]
RUN chmod +x /bootstrap.sh

# Set the entrypoint to the bootstrap script
ENTRYPOINT [ "/bootstrap.sh" ]

# Run DSE in foreground mode by default
CMD [ "dse", "cassandra", "-f" ]