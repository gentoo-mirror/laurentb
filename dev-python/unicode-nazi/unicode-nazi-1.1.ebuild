# Copyright 2012-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python{2_7,3_3,3_4} )

inherit distutils-r1

DESCRIPTION="Annoying helper module that finds unicode/bytestring
comparisions and other problems."
HOMEPAGE="https://github.com/mitsuhiko/unicode-nazi
https://pypi.python.org/pypi/unicode-nazi"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=""

DOCS=( README )
