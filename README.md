[![Copier](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/copier-org/copier/master/img/badge/badge-grayscale-inverted-border-orange.json)](https://github.com/copier-org/copier)

# click-app copier template

[Copier](https://github.com/copier-org/copier) template for creating new [Click](https://click.palletsprojects.com/) command-line tools.

based on brilliant [click-app](https://github.com/simonw/click-app) cookiecutter template by [Simon Willison](https://github.com/simonw) with some additional features.

## Usage

First install copier if you haven't already.
`pipx` is recommended for installing copier:
```
pipx install copier
```

then:
```bash
copier copy gh:kj-9/click-app-copier your-new-project
```
this will generate a project dir in the `./your-new-project`.


## Demo
[Here](https://github.com/kj-9/click-app-copier-template-demo) is a demo repository of a generated project using this template.


## Publishing your tool as a package to PyPI

The template also includes a publish.yml GitHub Actions workflow for publishing packages to PyPI, using pypa/gh-action-pypi-publish.

To use this action, you need to create a PyPI account and configure a Trusted Publisher for this package.

Once you have created your account, navigate to https://pypi.org/manage/account/publishing/ and create a "pending publisher" for the package. Use the following values:

PyPI Project Name: The name of your package
Owner: Your GitHub username or organization - the "foo" in github.com/foo/bar
Repsitory name: The name of your repository - the "bar" in github.com/foo/bar
Workflow name: publish.yml
Environment name: release
Now, any time you create a new "Release" on GitHub the Action will build your package and push it to PyPI.

The tag for your release needs to match the VERSION string at the top of your pyproject.toml file. You should bump this version any time you release a new version of your package.
