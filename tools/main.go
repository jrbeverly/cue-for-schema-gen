package main

import "io/ioutil"

func main() {
	b, err := gocode.Generate("spec/system.cue", instance, nil)
	if err != nil {
		// handle error
	}

	err = ioutil.WriteFile("cue_gen.go", b, 0644)
}
