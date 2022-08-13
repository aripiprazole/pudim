use nvim_oxi as oxi;

#[oxi::module]
fn foo() -> oxi::Result<i32> {
    Ok(42)
}
