use anyhow::Result;
use decasify::{Locale, StyleGuide};
use wasm_minimal_protocol::{initiate_protocol, wasm_func};

initiate_protocol!();

#[wasm_func]
pub fn titlecase(data: &[u8], locale: &[u8]) -> Result<Vec<u8>> {
    let s = String::from_utf8(data.to_vec())?;
    let l = Locale::from(locale);
    Ok(decasify::titlecase(&s, l, StyleGuide::default()).into_bytes())
}

#[wasm_func]
pub fn lowercase(data: &[u8], locale: &[u8]) -> Result<Vec<u8>> {
    let s = String::from_utf8(data.to_vec())?;
    let l = Locale::from(locale);
    Ok(decasify::lowercase(&s, l).into_bytes())
}

#[wasm_func]
pub fn uppercase(data: &[u8], locale: &[u8]) -> Result<Vec<u8>> {
    let s = String::from_utf8(data.to_vec())?;
    let l = Locale::from(locale);
    Ok(decasify::uppercase(&s, l).into_bytes())
}

#[wasm_func]
pub fn sentencecase(data: &[u8], locale: &[u8]) -> Result<Vec<u8>> {
    let s = String::from_utf8(data.to_vec())?;
    let l = Locale::from(locale);
    Ok(decasify::sentencecase(&s, l).into_bytes())
}
