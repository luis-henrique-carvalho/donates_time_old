CONTAINER_NAME ?= donates_time
CONTAINER_DB_NAME ?= postgres

shell:
	@docker exec -it $(CONTAINER_NAME) \
	sh -c "/bin/bash || /bin/sh"

db-shell:
	@ docker exec -it $(CONTAINER_DB_NAME) psql -U postgres
