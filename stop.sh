#!/usr/bin/env bash

docker compose exec node2 sh -c "/opt/spark/sbin/stop-worker.sh"
docker compose exec node3 sh -c "/opt/spark/sbin/stop-worker.sh"
docker compose exec node4 sh -c "/opt/spark/sbin/stop-worker.sh"

docker compose exec node1 sh -c "/opt/spark/sbin/stop-worker.sh && /opt/spark/sbin/stop-master.sh"
