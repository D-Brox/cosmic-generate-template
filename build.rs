fn main() -> Result<(), Box<dyn std::error::Error>> {
    // Rebuild if i18n files change
    println!("cargo:rerun-if-changed=i18n");
{%- if type=="app" %}

    // Emit version information (if not cached by just vendor)
    let mut builder = vergen_gitcl::GitclBuilder::default();
    println!("cargo:rerun-if-env-changed=VERGEN_GIT_COMMIT_DATE");
    if std::env::var_os("VERGEN_GIT_COMMIT_DATE").is_none() {
        builder.commit_date(true);
    }
    
    println!("cargo:rerun-if-env-changed=VERGEN_GIT_SHA");
    if std::env::var_os("VERGEN_GIT_SHA").is_none() {
        builder.sha(false);
    }
    
    vergen_gitcl::Emitter::default().add_instructions(&builder.build()?)?.fail_on_error().emit()?;
{%- endif %}
    
    Ok(())
}
