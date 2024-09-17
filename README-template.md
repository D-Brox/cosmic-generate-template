# {{project-name}}

{{description}}

## Installation 

Clone the repository:

```
git clone {{repository}} {{project-name}}
cd {{project-name}}
```

Build and install the project:

```
just build-release
sudo just install
```

For alternative packaging methods, use the one of the following recipes:

- `deb`: run `just build-deb` and `sudo just install-deb`
- `rpm`: run `just build-rpm` and `sudo just install-rpm`
- `aur`: run `just build-aur` and `sudo just install-aur`
- `flatpak`: run `just install-flatpak` (requires [`flatpak-builder`][flatpak-builder])

For vendoring, use `just vendor` and `just vendor-build`

## Contributing

A [justfile](./justfile) is included with common recipes used by other COSMIC projects:

- `just build-debug` compiles with debug profile
- `just run` builds and runs the application
- `just check` runs clippy on the project to check for linter warnings
- `just check-json` can be used by IDEs that support LSP

{% if license != "None" %}
## License
{% if license != "Dual MIT/Apache-2.0" %}
Code is distributed with the [{{license}} license][./LICENSE]
{% else %}
Code is distributed with the [MIT][./LICENSE-MIT] and [Apache-2.0][./LICENSE-APACHE] licenses
{% endif %}
{% endif %}

