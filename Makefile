.PHONY: start logs seed

start: etc/prometheus/prometheus.yml up seed

logs:
	docker-compose -p cpg logs -f --tail=100

etc/prometheus/prometheus.yml:
	cp ./etc/prometheus/prometheus.sample.yml ./etc/prometheus/prometheus.yml

seed:
	@bash ./scripts/seed.sh admin:admin

up:
	@docker-compose -p cpg up -d

destroy:
	@docker-compose -p cpg down -v
