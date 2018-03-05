# Copyright (C) 2018 Yuval Langer
#
# This file is part of Meditate.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.


"""Setup file."""

from setuptools import setup


DESCRIPTION = "A command line meditation clock."


setup(
    name="meditate",
    license="AGPLv3+",
    url="https://github.com/yuvallanger/meditate",
    description=DESCRIPTION,
    long_description=DESCRIPTION,
    maintainer="Yuval Langer",
    maintainer_email="yuval.langer@gmail.com",
    version="0.0.11",
    entry_points={
        "console_scripts": [
            "meditate=meditate:main",
        ],
    },
    include_package_data=True,
    data_files=[
        ("sound", ["sound/140128__jetrye__bell-meditation-cleaned.wav"]),
    ],
    install_requires=[
        "attrs",
        "docopt",
        "simpleaudio",
        "trio",
    ],
    python_requires="~=3.6",
)
