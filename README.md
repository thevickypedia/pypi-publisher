[![made-with-gha](https://img.shields.io/badge/Made%20with-Github_Actions-black?style=for-the-badge&logo=GitHub)][marketplace]

[![pages](https://github.com/thevickypedia/none-shall-pass/actions/workflows/pages/pages-build-deployment/badge.svg)][pages]

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
      - uses: thevickypedia/pypi-publisher@v2
        env:
          token: ${{ secrets.PYPI_TOKEN }}
```

### Allowed Inputs

- `user` - PyPi username. Defaults to `__token__`
- `token` - PyPi token. **Mandatory**
- `test-upload` - Uploads to [TestPyPi repository][test-pypi]. Defaults to `false`
- `dry-run` - Builds the distribution without uploading to PyPi. Defaults to `false`
- `repository-url` - PyPi repository URL. Set based on `test-upload` flag.
- `packages-dir` - The target directory for distribution. Defaults to `dist`
- `verify-metadata` - Check metadata before uploading. Defaults to `true`
- `skip-existing` - Avoids failing if distribution exists in package index.
- `verbose` - Runs in verbose mode. Defaults to `false`
- `print-hash` - Show hash values of distribution files. Defaults to `true`
- `setup-python` - Uses the GH action `setup-python`. Defaults to `false`,
but gets overridden dynamically based on `python` command's availability.

## License & copyright

&copy; Vignesh Rao

Licensed under the [MIT License][license]

[pages]: https://thevickypedia.github.io/pypi-publisher/
[license]: https://github.com/thevickypedia/pypi-publish/blob/main/LICENSE
[test-pypi]: https://test.pypi.org
[marketplace]: https://github.com/marketplace/actions/pypi-publisher
