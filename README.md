# Github Configuration

[![JSON](https://github.com/darioblanco/.github/actions/workflows/_json.yaml/badge.svg)](https://github.com/darioblanco/.github/actions/workflows/_json.yaml)
[![Reusable Workflows](https://github.com/darioblanco/.github/actions/workflows/_reusable-workflows.yaml/badge.svg)](https://github.com/darioblanco/.github/actions/workflows/_reusable-workflows.yaml)
[![Release](https://github.com/darioblanco/.github/actions/workflows/_short-version.yaml/badge.svg)](https://github.com/darioblanco/.github/actions/workflows/_short-version.yaml)
[![YAML](https://github.com/darioblanco/.github/actions/workflows/_yaml.yaml/badge.svg)](https://github.com/darioblanco/.github/actions/workflows/_yaml.yaml)

The `.github` repository works as a fallback for all the repositories in the organization
that don't have an actual `.github` directory.

## Development

To lint Github workflows and all the JSON and YAML files:

```sh
  make lint
```

The `Makefile` exposes a `make init` target that will verify if all dev local requirements are satisfied.

## Contributing

[Contribution guidelines](CONTRIBUTING.md)
