#!/usr/bin/env bash

docker compose exec node1 sh -c "/opt/spark/sbin/start-master.sh && /opt/spark/sbin/start-worker.sh spark://node1:7077"
docker compose exec node2 sh -c "/opt/spark/sbin/start-worker.sh spark://node1:7077"
docker compose exec node3 sh -c "/opt/spark/sbin/start-worker.sh spark://node1:7077"
docker compose exec node4 sh -c "/opt/spark/sbin/start-worker.sh spark://node1:7077"
