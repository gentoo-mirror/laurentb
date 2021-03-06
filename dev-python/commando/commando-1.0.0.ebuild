# Copyright 2012-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python{2_7,3_5,3_6,3_7,3_8} )

inherit distutils-r1

DESCRIPTION="A declarative interface for argparse"
HOMEPAGE="https://github.com/lakshmivyas/commando
https://pypi.python.org/pypi/commando"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
KEYWORDS="~amd64 ~x86"

LICENSE="MIT"
SLOT="0"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND=""

DOCS=( LICENSE AUTHORS.rst CHANGELOG.rst CONTRIBUTING.rst README.rst )
