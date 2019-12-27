# Copyright 2012-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python{2_7,3_5,3_6,3_7,3_8} )

inherit distutils-r1

DESCRIPTION="Read JUnit/XUnit XML files and map them to Python objects"
HOMEPAGE="https://pypi.python.org/pypi/xunitparser"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND=""

DOCS=( README LICENSE AUTHORS )
