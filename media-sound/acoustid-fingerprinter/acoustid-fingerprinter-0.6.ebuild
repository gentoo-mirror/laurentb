# Copyright 2011-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
inherit eutils cmake-utils

DESCRIPTION="GUI application to submit audio fingerprints to the Acoustid database."
HOMEPAGE="http://acoustid.org/fingerprinter"
SRC_URI="mirror://github/lalinsky/${PN}/${P}.tar.gz"
LICENSE="GPL-2"

SLOT="0"
KEYWORDS="~x86 ~amd64"

IUSE=""
DEPEND="dev-qt/qtgui
	media-libs/chromaprint
	virtual/ffmpeg"
RDEPEND="${DEPEND}"

src_prepare() {
	pwd
	ls
	epatch "${FILESDIR}/0001-libav.patch"
	epatch "${FILESDIR}/0002-libav.patch"
}
