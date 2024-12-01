#let _plugin = plugin("decasify.wasm")

#let string-to-titlecase(s, l) = {
  // str(_plugin.titlecase(bytes(s), bytes("en"), bytes("default")))
  str(_plugin.titlecase(bytes(s), bytes(l)))
}

#let titlecase(body, locale, limit: 4) = {
  show regex(".{" + str(limit) + ",}"): it => string-to-titlecase(it.text, locale)

  body
}
