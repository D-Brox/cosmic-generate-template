let app_id = variable::get("app_id");
file::rename("res/icons/hicolor/scalable/apps/icon.svg", "res/icons/hicolor/scalable/apps/"+ app_id + ".svg");
file::rename("res/template.metainfo.xml", "res/"+ app_id + ".metainfo.xml");
file::rename("res/template.desktop", "res/"+ app_id + ".desktop");
file::rename("template.json", app_id + ".json");
file::delete("README.md");
file::rename("README-template.md", "README.md");