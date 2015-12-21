# Copyright 2012-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python{2_7,3_3,3_4} )

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