#import "decasify.typ": titlecase

#set page(width: auto, height: auto, margin: 1cm)

#for s in (
  "foo bar: baz",
) [
  #s => #titlecase(s) \
]
