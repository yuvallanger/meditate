Changelog
=========

All notable changes to this project will be documented in this file.

The format is based on `Keep a Changelog
<http://keepachangelog.com/en/1.0.0/>`__ and this project adheres to
`Semantic Versioning <http://semver.org/spec/v2.0.0.html>`__.

`Unreleased <https://github.com/yuvallanger/meditate/compare/v0.1.0...HEAD>`__
------------------------------------------------------------------------------

`v0.1.0 <https://github.com/yuvallanger/meditate/compare/v0.0.17...v0.1.0>`__ - 2018-03-28
------------------------------------------------------------------------------------------

Changed
~~~~~~~

- Renamed `--interval-time` and `--session-time` to `interval-duration` and `--session-duration`.
- Input to `--interval-duration` and `--session-duration` must come
    with time units, like this:
    `meditate --session-duration=1h20m --interval-duration=30m`.  A
    regular expression of `(\d+h)?(\d+m)?(\d+s)?` will be legal input,
    other than an empty string.


`v0.0.17 <https://github.com/yuvallanger/meditate/compare/v0.0.16...v0.0.17>`__ - 2018-03-18
--------------------------------------------------------------------------------------------


Changed
~~~~~~~

-  Returned to `Trio <https://pypi.org/project/trio/>`__.
