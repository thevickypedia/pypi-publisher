[![made-with-gha](https://img.shields.io/badge/Made%20with-Github_Actions-black?style=for-the-badge&logo=GitHub)][marketplace]

[![pages](https://github.com/thevickypedia/none-shall-pass/actions/workflows/pages/pages-build-deployment/badge.svg)][pages]

# PyPi Publisher

`pypi-publisher` is a GitHub action designed to upload python projects to Pypi repository.

## Install Guide

#### Add `pypi-publisher` action to your build workflow

- In your GitHub repository, select the Actions tab and either add or edit a workflow.
- Navigate to `pypi-publisher` in [Marketplace][marketplace].
- Copy and paste the yaml into your workflow.

**[OR]**

Copy & paste the following workflow definition into your project `.github/workflows/pypi-publish.yml`

```yaml
name: PyPi Publisher

on:
  workflow_dispatch:
  release:
    types: [ published ]

jobs:
  pypi-publisher:
    runs-on: ubuntu-latest
    steps:
      - uses: thevickypedia/pypi-publisher@v3
        env:
          token: ${{ secrets.PYPI_TOKEN }}
        with:
          skip-existing: true
```

### Allowed Inputs

| Parameter         | Description                                             | Default             |
|-------------------|---------------------------------------------------------|---------------------|
| `user`            | PyPi username.                                          | `__token__`         |
| `token`           | PyPi token. **[Mandatory]**                             | **NA**              |
| `test-upload`     | Uploads to [TestPyPi][test-pypi] repository.            | `false`             |
| `dry-run`         | Builds the distribution without uploading to PyPi.      | `false`             |
| `repository-url`  | PyPi repository URL.                                    | [upload.pypi.org]** |
| `packages-dir`    | The target directory for distribution.                  | `dist`              |
| `verify-metadata` | Check metadata before uploading.                        | `true`              |
| `skip-existing`   | Avoids failing if distribution exists in package index. | `true`              |
| `verbose`         | Runs in verbose mode.                                   | `false`             |
| `print-hash`      | Show hash values of distribution files.                 | `true`              |
| `setup-python`    | Uses the GH action `setup-python`.                      | `false`**           |
| `python-version`  | Python version for `setup-python`.                      | `3.9`               |

**Notes**

>- `repository-url` defaults to [upload.pypi.org], but it can change dynamically based on the `test-upload` flag.
>- `setup-python` defaults to `false`, but it can change dynamically based on whether `python` is installed in the runner.
>- `python-version` will be used only when `setup-python` flag is set to `true`, otherwise the default `python` in the runner takes precedence.

> Only `user` and `token` can be passed as `env` whilst, rest of the parameters should be passed using `with`

## License & copyright

&copy; Vignesh Rao

Licensed under the [MIT License][license]

[pages]: https://thevickypedia.github.io/pypi-publisher/
[license]: https://github.com/thevickypedia/pypi-publish/blob/main/LICENSE
[test-pypi]: https://test.pypi.org
[upload.pypi.org]: https://upload.pypi.org/legacy/
[marketplace]: https://github.com/marketplace/actions/pypi-publisher
