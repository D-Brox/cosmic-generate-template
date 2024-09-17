

let project_name = variable::get("crate_name");
if variable::get("type") == "app" {
    file::delete("src/applet.rs");
    file::delete("i18n/en/applet.ftl");
    file::rename("i18n/en/app.ftl", "i18n/en/" + project_name + ".ftl");
} else {
    file::delete("src/app.rs");
    file::delete("i18n/en/app.ftl");
    file::rename("i18n/en/applet.ftl", "i18n/en/" + project_name + ".ftl");
}

let license = variable::get("license");
switch license {
    "None" => {
        file::delete("LICENSE-APACHE");
        file::delete("LICENSE-GPLv3");
        file::delete("LICENSE-MIT");
    }
    "MIT" => {
        file::delete("LICENSE-APACHE");
        file::delete("LICENSE-GPLv3");
        file::rename("LICENSE-MIT", "LICENSE");
    }
    "Apache-2.0" => {
        file::rename("LICENSE-APACHE", "LICENSE");
        file::delete("LICENSE-GPLv3");
        file::delete("LICENSE-MIT");
    }
    "GPL-3.0" => {
        file::delete("LICENSE-APACHE");
        file::rename("LICENSE-GPLv3", "LICENSE");
        file::delete("LICENSE-MIT");
    }
    "Dual MIT/Apache-2.0" => {
        file::delete("LICENSE-GPLv3");
    }
    _ => (),
}
let year = system::date().year;
variable::set("year",year.to_string());