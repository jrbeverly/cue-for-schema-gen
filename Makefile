.PHONY: lint template api

lint:
	cue vet spec/data/schema.cue data/data.yaml
	cue vet spec/data/schema.cue data/bad-data.yaml

api:
	mkdir -p out/api
	cue cmd	 gen spec/api/*.cue

template:
	mkdir -p out/template
	cue cmd	 gen spec/template/*.cue