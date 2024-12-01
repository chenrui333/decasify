#import "decasify.typ": titlecase

#set page(width: auto, height: auto, margin: 1cm)

#for s in (
  "first impluse",
  "ilk ışıltı",
) [
  #s → #titlecase(s, "en") \
  #s → #titlecase(s, "tr") \
]
