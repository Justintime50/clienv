# CHANGELOG

## v0.2.0 (2022-10-12)

- Recursively search up through parent directories for `.env` files when a local copy cannot be found

## v0.1.0 (2022-07-26)

- Initial release
- Source `.env` files at the root of where you run your commands from (eg: Running `clienv make test` will source the `.env` file in the root of the project you ran the command from)
