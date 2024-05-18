# Pypi Publisher

`pypi-publisher` is a GitHub action designed to upload python projects to Pypi repository.

## Install Guide

#### Add `pypi-publisher` action to your build workflow

- In your GitHub repository, select the Actions tab and either add or edit a workflow.
- Copy and paste the yaml into your workflow.

**[OR]**

Copy & paste the following workflow definition into your project `.github/workflows/pypi-publish.yml`

```yaml
name: Pypi Publisher

on:
  workflow_dispatch:
  release:
    types: [ published ]

jobs:
  pypi-publisher:
    runs-on: ubuntu-latest
    steps:
      - uses: thevickypedia/pypi-publisher@v1
```

## License & copyright

&copy; Vignesh Rao

Licensed under the [MIT License][license]

[license]: https://github.com/thevickypedia/pypi-publish/blob/main/LICENSE
