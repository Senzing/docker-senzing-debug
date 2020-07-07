# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
[markdownlint](https://dlaa.me/markdownlint/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.3.5] - 2020-07-07

### Changed in 1.3.5

- Update to senzing/senzing-base:1.5.1

## [1.3.4] - 2020-06-01

### Changed in 1.3.4

- Added additional libs required to use MySQL ODBC when optional MySQL env var is set. Temporary until Senzing API V2.0 and new EDA tools no longer use G2Database.py and pyodbc module

## [1.3.3] - 2020-05-29

### Changed in 1.3.3

- Added option to install MySQL client at runtime

## [1.3.2] - 2020-05-29

### Changed in 1.3.2

- Added apt packages: less, odbc-postgresql, python-pyodbc, unixodbc, unixodbc-dev
- Added pip3 packages: click, eventlet, flask-socketio, flask, fuzzywuzzy, itsdangerous, jinja2, markupsafe, pandas, ptable, pyodbc, pysnooper, python-engineio, python-levenshtein, python-socketio, six, werkzeug

## [1.3.1] - 2020-04-29

### Changed in 1.3.1

- Add apt packages: elfutils, procps

## [1.3.0] - 2020-01-29

### Changed in 1.3.0

- Update to senzing/senzing-base:1.4.0

## [1.2.2] - 2019-11-13

### Added in 1.2.2

- Added support for Microsoft MSSQL database

## [1.2.1] - 2019-08-20

### Changed in 1.2.1

- Pinned `senzing/senzing-debug:1.2.1` to `senzing/senzing-base:1.2.1`

## [1.2.0] - 2019-08-05

### Changed in 1.2.0

- RPM based installation

## [1.1.0] - 2019-07-23

### Added in 1.1.0

- Based on `senzing/senzing-base:1.1.0`, a non-root, immutable container
- This container, however, is a root container for debugging.

## [1.0.1] - 2019-07-10

### Changed in 1.0.1

- Migrate to python3

## [1.0.0] - 2019-07-10

### Added in 1.0.0

- Support for Python 2.7.
