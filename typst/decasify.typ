#let _plugin = plugin("decasify.wasm")

#let string-to-titlecase(text, lang, style) = {
  str(_plugin.titlecase(bytes(text), bytes(lang), bytes(style)))
}

#let titlecase(body, style: "default") = {
  show regex(".+"): it => string-to-titlecase(it.text, text.lang, style)
  body
}

#let string-to-lowercase(text, lang) = {
  str(_plugin.lowercase(bytes(text), bytes(lang)))
}

#let lowercase(body) = {
  show regex(".+"): it => string-to-lowercase(it.text, text.lang)
  body
}

#let string-to-uppercase(text, lang) = {
  str(_plugin.uppercase(bytes(text), bytes(lang)))
}

#let uppercase(body) = {
  show regex(".+"): it => string-to-uppercase(it.text, text.lang)
  body
}

#let string-to-sentencecase(text, lang) = {
  str(_plugin.sentencecase(bytes(text), bytes(lang)))
}

#let sentencecase(body) = {
  show regex(".+"): it => string-to-sentencecase(it.text, text.lang)
  body
}
