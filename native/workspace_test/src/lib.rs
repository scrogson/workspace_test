use rustler::{Encoder, Env, Error, Term};

rustler::rustler_export_nifs! {
    "Elixir.WorkspaceTest",
    [
        ("add", 2, add),
    ],
    None
}

fn add<'a>(env: Env<'a>, terms: &[Term<'a>]) -> Result<Term<'a>, Error> {
    let a: u32 = terms[0].decode()?;
    let b: u32 = terms[1].decode()?;

    Ok(math::add(a, b).encode(env))
}
