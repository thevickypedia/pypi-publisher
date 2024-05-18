# Pypi Publish

`pypi-publish` is a GitHub action designed to upload python projects to Pypi repository.

## Install Guide

#### Add `pypi-publish` action to your build workflow

- In your GitHub repository, select the Actions tab and either add or edit a workflow.
- Copy and paste the yaml into your workflow.

**[OR]**

Copy & paste the following workflow definition into your project `.github/workflows/pypi-publish.yml`

```yaml
name: Pypi Publish

on:
  workflow_dispatch:
  release:
    types: [ published ]

jobs:
  pypi-publish:
    runs-on: ubuntu-latest
    steps:
      - uses: thevickypedia/pypi-publish@v1
```

- Commit your changes and run the workflow manually.

## License & copyright

&copy; Vignesh Rao

Licensed under the [MIT License][license]

[license]: https://github.com/thevickypedia/pypi-publish/blob/main/LICENSE
