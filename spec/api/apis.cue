package gen

// import "text/template"

// Release notes:
// - You can now specify your age and your hobby!
#V1: {
    age:   >=0 & <=100
    hobby: string
}

// Release notes:
// - People get to be older than 100, so we relaxed it.
// - It seems not many people have a hobby, so we made it optional.
#V2: {
    age:    >=0 & <=150 // people get older now
    hobby?: string      // some people don't have a hobby
}

// Release notes:
// - Actually no one seems to have a hobby nowadays anymore, so we dropped the field.
#V3: {
    age: >=0 & <=150
}

data: {
    schemas: [
        #V1,
        #V2,
        #V3
    ]
}

// Templates which use Go's template engine
templates: [ for i, t in data.schemas { filename: i, contents: t } ]
// templates: [
// 	{
// 		filename: "123.txt"
// 		contents: """
// 		abc
// 		"""
// 	},
// 	{
// 		filename: "123.txt"
// 		contents: """
// 		abc
// 		"""
// 	}
// ]

// The rendered output from data+templates
rendered: [ for T in templates {
	filename: T.filename
	contents: T.contents
}]

