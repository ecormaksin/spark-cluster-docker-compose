# Spark Clusterメモ

## コンテナ起動後のサービス起動

```shell
docker compose exec node1 sh -c "/opt/spark/sbin/start-master.sh && /opt/spark/sbin/start-worker.sh spark://node1:7077"

docker compose exec node2 sh -c "/opt/spark/sbin/start-worker.sh spark://node1:7077"
docker compose exec node3 sh -c "/opt/spark/sbin/start-worker.sh spark://node1:7077"
docker compose exec node4 sh -c "/opt/spark/sbin/start-worker.sh spark://node1:7077"
```

## サービス停止

```shell
docker compose exec node1 sh -c "/opt/spark/sbin/stop-worker.sh && /opt/spark/sbin/stop-master.sh"

docker compose exec node2 sh -c "/opt/spark/sbin/stop-worker.sh"
docker compose exec node3 sh -c "/opt/spark/sbin/stop-worker.sh"
docker compose exec node4 sh -c "/opt/spark/sbin/stop-worker.sh"
```
