# {{ hyphenated }}

[![PyPI](https://img.shields.io/pypi/v/{{ hyphenated }}.svg)](https://pypi.org/project/{{ hyphenated }}/){% if github_username %}
[![Changelog](https://img.shields.io/github/v/release/{{ github_username }}/{{ hyphenated }}?include_prereleases&label=changelog)](https://github.com/{{ github_username }}/{{ hyphenated }}/releases)
[![Tests](https://github.com/{{ github_username }}/{{ hyphenated }}/actions/workflows/ci.yml/badge.svg)](https://github.com/{{ github_username }}/{{ hyphenated }}/actions/workflows/ci.yml)
[![License](https://img.shields.io/badge/license-Apache%202.0-blue.svg)](https://github.com/{{ github_username }}/{{ hyphenated }}/blob/master/LICENSE){% endif %}

{{ description }}

## Installation

Install this tool using `pip`:
```bash
pip install {{ hyphenated }}
```
## Usage

For help, run:
<!-- [[[cog
import cog
from {{ underscored }} import cli
from click.testing import CliRunner
runner = CliRunner()
result = runner.invoke(cli.cli, ["--help"])
help = result.output.replace("Usage: cli", "Usage: {{ hyphenated }}")
cog.out(
    f"```bash\n{help}\n```"
)
]]] -->
```bash
Usage: {{ hyphenated }} [OPTIONS] COMMAND [ARGS]...

Options:
  --version  Show the version and exit.
  --help     Show this message and exit.

Commands:
  command  Command description goes here

```
<!-- [[[end]]] -->

You can also use:
```bash
python -m {{ underscored }} --help
```
## Development

To contribute to this tool, first checkout the code. Then create a new virtual environment:
```bash
cd {{ hyphenated }}
python -m venv venv
source venv/bin/activate
```
Now install the dependencies and test dependencies:
```bash
pip install -e '.[test]'
```
To run the tests:
```bash
python -m pytest
```
