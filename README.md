[![made-with-gha](https://img.shields.io/badge/Made%20with-Github_Actions-black?style=for-the-badge&logo=GitHub)][marketplace]

# Pypi Publish

`pypi-publish` is a GitHub action designed to upload python projects to Pypi repository.

## Install Guide

#### Add `pypi-publish` action to your build workflow

- In your GitHub repository, select the Actions tab and either add or edit a workflow.
- Search for `pypi-publish` from the [Marketplace][marketplace] tab on the right.
- Copy and paste the yaml into your workflow.

**[OR]**

Copy & paste the following workflow definition into your project `.github/workflows/pypi-publish.yml`

```yaml
name: Pypi Publish

on:
  workflow_dispatch:

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

[marketplace]: https://github.com/marketplace/actions/pypi-publish

[license]: https://github.com/thevickypedia/pypi-publish/blob/main/LICENSE
