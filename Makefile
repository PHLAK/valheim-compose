init initialize:
	@cp --interactive --verbose .skelleton/config/*.env config/
	@cp --interactive --verbose .skelleton/.env .

update upgrade:
	@docker-compose pull && docker-compose up --detach
