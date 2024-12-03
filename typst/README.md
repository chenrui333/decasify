# Decasify package for Typst

A thin wrapper around the [decasify](https://github.com/alerque/decasify) library providing Typst functions for locale and style guide aware text casing functions.
Provides functionns for title-case (and other cases) that adapt to the language of the current document context.
Includes support for Turkish and multiple style guides.

```typst
#import "decasify.typ": titlecase
#set text(lang: "tr")
#titlecase("ilk ışıltı")
```

![example](./example.png)
