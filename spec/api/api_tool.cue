package gen

import (
	"tool/file"
)

command: "gen": {
	for i, R in rendered {
		// make a unique name when comprehending
		"write-\(i)": file.Create & {
			filename: "out/api/\(R.filename)"
			contents: R.contents
		}
	}
}