# COSMIC App/Applet Template

A `cargo-generate` template for developing applications and applets for the COSMIC™ desktop environment.

## Getting Started

```sh
# Install cargo-generate
cargo install cargo-generate
# Create your project using this template
cargo generate --git https://github.com/D-Brox/cosmic-generate-template
```

A [justfile](./justfile) is included by default with common recipes used by other COSMIC projects. Install from [casey/just][just].

- `just` builds the application with the default `just build-release` recipe
- `just run` builds and runs the application
- `just install` installs the project into the system
- `just vendor` creates a vendored tarball
- `just build-vendored` compiles with vendored dependencies from that tarball
- `just check` runs clippy on the project to check for linter warnings
- `just check-json` can be used by IDEs that support LSP

A [second justfile](./packaging.just) is also included with packaging recipes:

- `deb`: run `just build-deb` and `sudo just install-deb`
- `rpm`: run `just build-rpm` and `sudo just install-rpm`
- `aur`: run `just build-aur` and `sudo just install-aur`
- `flatpak`: run `just install-flatpak` (requires [`flatpak-builder`][flatpak-builder])


## Documentation

Refer to the [libcosmic API documentation][api-docs] and [book][book] for help with building applications with [libcosmic][libcosmic].

[api-docs]: https://pop-os.github.io/libcosmic/cosmic/
[book]: https://pop-os.github.io/libcosmic-book/
[libcosmic]: https://github.com/pop-os/libcosmic/
[just]: https://github.com/casey/just
[flatpak-builder]: https://github.com/flatpak/flatpak-builder