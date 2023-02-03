all:
	@docker compose -f ./src/docker-compose.yml up

down:
	@docker compose -f ./src/docker-compose.yml down

re:
	@docker compose -f src/docker-compose.yml up --build

clean:
	@docker stop $$(docker ps -qa);\
	docker rm $$(docker ps -qa);\
	docker rmi -f $$(docker images -qa);\
	docker volume rm $$(docker volume ls -q);\
	docker network rm $$(docker network ls -q);\
	rm -rf /home/ael-kouc/data/wp/*
	rm -rf /home/ael-kouc/data/db/*
.PHONY: all re down clean
