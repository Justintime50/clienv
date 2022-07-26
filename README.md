# clienv

Source your environment variables from `.env` when running CLI commands.

[![Build](https://github.com/Justintime50/onepass/workflows/build/badge.svg)](https://github.com/Justintime50/onepass/actions)
[![Version](https://img.shields.io/github/v/tag/justintime50/onepass)](https://github.com/justintime50/onepass/releases)
[![Licence](https://img.shields.io/github/license/justintime50/onepass)](LICENSE)

Sometimes you may want to source environment variables from a file (eg: `.env`) that is local to a specific project - variables that may not exist in your shell config or you only want them on a single command run. Enter `clienv`, the CLI environment tool that sources your env vars locally.

## Install

```bash
# Setup the tap
brew tap justintime50/formulas

# Install clienv
brew install clienv
```

## Usage

1. Place a `.env` file in the root of your project or wherever you are going to call your commands from
2. Run `clienv` prior to any of your commands and the tool will source your `.env` variables for that command run. You can chain multiple commands together too.

```bash
clienv my_command
```
