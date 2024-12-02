#import "decasify.typ": titlecase

#set page(width: auto, height: auto, margin: 1cm)

#for s in (
  (str: "first impulse", lang: "en"),
  (str: "ilk ışıltı", lang: "tr"),
) [
  #set text(lang: s.lang)
  [#context(text.lang)] #s.str → #titlecase(s.str) \
]
