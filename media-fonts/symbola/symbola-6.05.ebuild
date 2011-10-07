# Copyright 2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=4
inherit font

DESCRIPTION="Font with many Unicode symbols"
HOMEPAGE="http://users.teilar.gr/~g1951d/"
SRC_URI="http://users.teilar.gr/~g1951d/Symbola${PV/./}.zip"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND=""

src_prepare () {
	mv Symbola${PV/./}.ttf Symbola.ttf
}

FONT_SUFFIX="ttf"
S="${WORKDIR}"
FONT_S="${S}"
DOCS="Symbola${PV/./}.txt Symbola${PV/./}.pdf"
