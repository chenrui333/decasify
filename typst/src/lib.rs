use anyhow::Result;
use decasify::{Locale, StyleGuide};
use wasm_minimal_protocol::{initiate_protocol, wasm_func};

initiate_protocol!();

#[wasm_func]
pub fn titlecase(data: &[u8]) -> Result<Vec<u8>> {
    let s = String::from_utf8(data.to_vec())?;
    Ok(decasify::titlecase(&s, Locale::EN, StyleGuide::default()).into_bytes())
}
