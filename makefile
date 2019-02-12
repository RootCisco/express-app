# --- heroku deploy --- #
.PHONY: deploy_heroku
deploy_heroku:
		heroku container:push web && \
    heroku container:release web

# --- docker-compose command --- #
.PHONY: start
start:
		docker-compose up --build

.PHONY: start_bg
start_bg:
		docker-compose up -d --bild

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

# Dockerの全てのコンテナ環境を消す（必要ならコメントアウト解除して使う）
# .PHONY: clean
# clean:
# 		docker stop $(docker ps -q) && \
# 		docker rm $(docker ps -aq) && \
# 		docker rmi $(docker images -q)
