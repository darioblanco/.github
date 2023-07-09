# Github Configuration

[![JSON](https://github.com/darioblanco/.github/actions/workflows/_json.yaml/badge.svg)](https://github.com/darioblanco/.github/actions/workflows/_json.yaml)
[![Reusable Workflows](https://github.com/darioblanco/.github/actions/workflows/_reusable-workflows.yaml/badge.svg)](https://github.com/darioblanco/.github/actions/workflows/_reusable-workflows.yaml)
[![Release](https://github.com/darioblanco/.github/actions/workflows/_short-version.yaml/badge.svg)](https://github.com/darioblanco/.github/actions/workflows/_short-version.yaml)
[![YAML](https://github.com/darioblanco/.github/actions/workflows/_yaml.yaml/badge.svg)](https://github.com/darioblanco/.github/actions/workflows/_yaml.yaml)

The `.github` repository works as a fallback for all the repositories in the organization
that don't have an actual `.github` directory.

## Github Workflows

This repository also contains reusable GitHub workflows that can be easily integrated into your projects.
The workflows are organized in the `.github/workflows` folder, and example templates can be found
in the `workflow-templates` folder.
These workflows cover a variety of common use cases and can help streamline your development and deployment processes.

### Usage

To use a workflow or template from this repository in your own project, follow these steps:

1. Copy the desired workflow or template file into your project's `.github/workflows` folder.
2. Modify the workflow or template as needed, updating variables, steps, and configurations to match your project requirements.
3. Commit and push the changes to your repository.
4. The workflow will be automatically triggered based on the configured events, and you can monitor its execution in the Actions tab of your repository.

Please note that some workflows or templates may require additional setup or configurations, such as secrets, environment variables, or specific dependencies. Refer to the individual workflow or template documentation for further instructions.

The `workflow-templates/` folder expose examples that you can also load into your repository via the Github UI.
Make sure that you replace the `$default-branch` ocurrences and other placeholders before using them.

### Development

To lint Github workflows and all their related JSON and YAML files:

```sh
  make lint
```

The `Makefile` exposes a `make init` target that will verify if all dev local requirements are satisfied.

### Troubleshooting

Some workflows that use the github token from the repository (like `short-version.yaml`)
will fail if the workflow permissions are not set to `read and write`.
You can enable that in the repository settings, in the `Actions` section.

## Contributing

[Contribution guidelines](CONTRIBUTING.md)
