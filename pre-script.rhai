

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
        varialbe::set("LICENSE","")
    }
    "MIT" => {
        file::delete("LICENSE-APACHE");
        file::delete("LICENSE-GPLv3");
        file::rename("LICENSE-MIT", "LICENSE");
        variable::set("LICENSE", "// SPDX-License-Identifier: " + license + "\n\n");
    }
    "Apache-2.0" => {
        file::rename("LICENSE-APACHE", "LICENSE");
        file::delete("LICENSE-GPLv3");
        file::delete("LICENSE-MIT");
        variable::set("LICENSE", "// SPDX-License-Identifier: " + license + "\n\n");
    }
    "GPL-3.0-only" => {
        file::delete("LICENSE-APACHE");
        file::rename("LICENSE-GPLv3", "LICENSE");
        file::delete("LICENSE-MIT");
        variable::set("LICENSE", "// SPDX-License-Identifier: " + license + "\n\n");
    }
    "Dual MIT/Apache-2.0" => {
        file::delete("LICENSE-GPLv3");
        variable::set("license", "MIT or Apache-2.0");
        variable::set("LICENSE", "// SPDX-License-Identifier: MIT or Apache-2.0");
    }
    _ => (),
}
let year = system::date().year;
variable::set("year",year.to_string());