
.PHONY: lint


lint:
	cue vet spec/schema.cue data/data.yaml