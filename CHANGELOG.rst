Changelog
=========

All notable changes to this project will be documented in this file.

The format is based on `Keep a Changelog
<http://keepachangelog.com/en/1.0.0/>`__ and this project adheres to
`Semantic Versioning <http://semver.org/spec/v2.0.0.html>`__.

`Unreleased`_
-------------

`v0.1.1`_ - 2018-03-28
----------------------

Added
~~~~~

- Add `restructuredtext-lint`_ in Pipfile.

Changed
~~~~~~~

- Clean README.rst and CHANGELOG.rst.

`v0.1.0`_ - 2018-03-28
----------------------

Changed
~~~~~~~

- Renamed ``--interval-time`` and ``--session-time`` to
  ``interval-duration`` and `--session-duration``.
- Input to ``--interval-duration`` and ``--session-duration`` must
  come with time units, like this:

    .. code:: sh

        meditate --session-duration=1h20m --interval-duration=30m

  A regular expression of ``(\d+h)?(\d+m)?(\d+s)?`` will be legal
  input, other than an empty string.


`v0.0.17`_ - 2018-03-18
-----------------------


Changed
~~~~~~~

- Returned to `Trio`_.


.. _Trio: https://pypi.org/project/trio/
.. _`restructuredtext-lint`: https://pypi.org/project/restructuredtext-lint/

.. _`Unreleased`: https://gitlab.com/yuvallanger/meditate/compare/v0.1.1...HEAD
.. _`v0.1.1`: https://gitlab.com/yuvallanger/meditate/compare/v0.1.0...v0.1.1
.. _`v0.1.0`: https://gitlab.com/yuvallanger/meditate/compare/v0.0.17...v0.1.0
.. _`v0.0.17`: https://gitlab.com/yuvallanger/meditate/compare/v0.0.16...v0.0.17
