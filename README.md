# Kafka connect mongo
Full end to end local environment for getting data from a mongo db using kakfa connect as a producer and consumer to store the change stream data back into the mongo db database.

# Mongo DB connection string
Enter the connection string into mongo compass to connect `mongodb://127.0.0.1:27017,127.0.0.1:27018,127.0.0.1:27019/?replicaSet=rs0`

# Kafka connect REST API
Use the make commands from the make file to interact with the kafka connect REST API

# Kafka connect REST API extension
Get the latest package from https://github.com/rs1257/kafka-connect-rest-extension/packages/2503488 and put in the /plugins folder. This will install the plugin and it will be loaded as a rest extension from the CONNECT_REST_EXTENSION_CLASSES env var in the docker compose file.