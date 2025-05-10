start:
	docker compose up --wait
	make update-source-connector
	make update-sink-connector

restart:
	docker compose down
	make start

ping:
	curl 127.0.0.1:8083

list-connectors:
	curl 127.0.0.1:8083/connectors

update-source-connector:
	curl -i -X PUT 127.0.0.1:8083/connectors/mongo-source/config \
		-H "Content-Type: application/json" \
    --data-binary "@config/mongo-source.json"

update-sink-connector:
	curl -i -X PUT 127.0.0.1:8083/connectors/mongo-sink/config \
		-H "Content-Type: application/json" \
    --data-binary "@config/mongo-sink.json"

list-topics:
	docker exec kafka-broker bash -c "kafka-topics --list --bootstrap-server kafka-broker:19092"

list-messages:
	docker exec kafka-broker bash -c "kafka-console-consumer --bootstrap-server kafka-broker:19092 --topic data.src --from-beginning"