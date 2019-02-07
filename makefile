.PHONY: start
start:
		docker-compose up -d --build

.PHONY: up
up:
		docker-compose up

.PHONY: stop
stop:
		docker-compose stop

.PHONY: down
down:
		docker-compose down

.PHONY: ps
ps:
		docker-compose ps

.PHONY: restart
restart:
		dokcer-compose kill && \
		docker-compose rm -f && \
		dokcer-compose up -d --build

.PHONY: logs
logs:
		docker-compose logs

.PHONY: kill
kill:
		docker-compose kill

# Dockerのコンテナ環境をきれいに消す
.PHONY: clean
clean:
		docker stop $(docker ps -q) && \
		docker rm $(docker ps -aq) && \
		docker rmi $(docker images -q)
