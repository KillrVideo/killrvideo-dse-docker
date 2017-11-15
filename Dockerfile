FROM store/datastax/dse-server:5.1.4

# Copy schema files into /opt/killrvideo-data
COPY [ "lib/killrvideo-data/graph/killrvideo_video_recommendations_schema.groovy", "lib/killrvideo-data/schema.cql", "lib/killrvideo-data/search/*.xml", "keyspace.cql", "/opt/killrvideo-data/" ]

# Copy bootstrap script(s) and make executable
COPY [ "bootstrap.sh", "lib/wait-for-it/wait-for-it.sh", "/" ]

# Set the entrypoint to the bootstrap script
ENTRYPOINT [ "/bootstrap.sh" ]

# Run DSE in search mode in the foreground by default
CMD [ "dse", "cassandra", "-s", "-g", "-f" ]
