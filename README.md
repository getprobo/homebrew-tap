# Probo Homebrew Tap

Official [Homebrew](https://brew.sh) tap for [Probo](https://www.probo.com),
the open-source GRC platform for engineers.

This tap ships `prb`, the Probo command-line client. Use it to manage risks,
controls, vendors, documents, audits, and the rest of your compliance program
from a terminal, shell scripts, or CI/CD pipelines.

## Installation

```sh
brew install getprobo/tap/prb
```

Or tap first, then install:

```sh
brew tap getprobo/tap
brew install prb
```

Supported platforms: macOS and Linux, on both `arm64` and `x86_64`.

## Getting started

```sh
prb auth login
prb risk list
```

See the [CLI documentation](https://www.probo.com/docs/developers/cli/overview)
for authentication, configuration, and the full command reference.

## Upgrading

```sh
brew update
brew upgrade prb
```

Formulae in this tap are updated automatically with each `prb` release.

## Links

- [Website](https://www.probo.com)
- [Documentation](https://www.probo.com/docs)
- [CLI documentation](https://www.probo.com/docs/developers/cli/overview)
- [Source code](https://github.com/getprobo/probo)
- [Releases](https://github.com/getprobo/probo/releases)
- [Discord](https://discord.gg/8qfdJYfvpY)

## License

`prb` is released under the [MIT License](https://github.com/getprobo/probo/blob/main/LICENSE).
