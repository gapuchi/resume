use resume::resume::Resume;
use tera::Tera;
use tera::Context;
use std::fs;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let resume: Resume = serde_dhall::from_file("config/resume.dhall").parse()?;

    let tera = match Tera::new("templates/*.tex") {
        Ok(t) => t,
        Err(e) => {
            println!("Parsing error(s): {}", e);
            ::std::process::exit(1);
        }
    };

    let rendered_latex = tera.render("resume.tex", &Context::from_serialize(&resume)?)?;
    fs::write("resume.tex", rendered_latex)?;
    
    Ok(())
}
