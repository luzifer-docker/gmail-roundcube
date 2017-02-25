ci:
	docker build --no-cache --pull -t registry.luzifer.io/roundcube .
	docker push registry.luzifer.io/roundcube
