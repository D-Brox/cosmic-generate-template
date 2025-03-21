# COSMIC App/Applet Template

A `cargo-generate` template for developing applications and applets for the COSMIC™ desktop environment.

## Getting Started

```sh
# Install cargo-generate
cargo install cargo-generate
# Create your project using this template
cargo generate gh:D-Brox/cosmic-generate-template
```

A [justfile](./justfile) is included by default with common recipes used by other COSMIC projects. Install from [casey/just][just].

- `just run` builds and runs the application
- `just run-logs` builds and runs the application with debug logs
- `just fmt` formats the code
- `just check` runs clippy on the project to check for linter warnings
- `just check-json` can be used by IDEs that support LSP
- `just spellcheck` checks the code for spelling mistakes

A [second justfile](./res/packaging.just) is also included with packaging recipes:

- `just build-debug` and `just build-release` build the project with those respective profiles
- `just install` installs the project into the root system
- `just install-local` installs the project in the user's home
- Install project as a `deb`: run `just build-deb && sudo just install-deb`
- Install project as an `rpm`: run `just build-rpm && sudo just install-rpm`
- `just vendor` and `just build-vendored` creates a vendored tarball and compiles with vendored dependencies from that tarball, respectively

## Documentation

Refer to the [libcosmic API documentation][api-docs] and [book][book] for help with building applications with [libcosmic][libcosmic].

[api-docs]: https://pop-os.github.io/libcosmic/cosmic/
[book]: https://pop-os.github.io/libcosmic-book/
[libcosmic]: https://github.com/pop-os/libcosmic/
[just]: https://github.com/casey/just
[flatpak-builder]: https://github.com/flatpak/flatpak-builder


## Thanks

This template is based on:

- The official [Cosmic App Template](https://github.com/pop-os/cosmic-app-template)
- [edfloreshz](https://github.com/edfloreshz)'s [Cosmic Applet Template](https://github.com/edfloreshz/cosmic-applet-template)