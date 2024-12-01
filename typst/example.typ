#import "decasify.typ": titlecase

#set page(width: auto, height: auto, margin: 1cm)

#for s in (
  "first impluse",
  "ilk ışıltı",
) [
  #set text(lang: "en")
  (#context(text.lang)) #s → #titlecase(s) \
  #set text(lang: "tr")
  (#context(text.lang)) #s → #titlecase(s) \
]
