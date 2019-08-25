# Copyright 2017-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python{2_7,3_4,3_5,3_6,3_7} )

inherit distutils-r1

DESCRIPTION="Converts between Gregorian dates and other calendar systems."
HOMEPAGE="https://pypi.org/project/convertdate/
https://github.com/fitnr/convertdate"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="dev-python/pytz[${PYTHON_USEDEP}]
sci-astronomy/pyephem[${PYTHON_USEDEP}]"
