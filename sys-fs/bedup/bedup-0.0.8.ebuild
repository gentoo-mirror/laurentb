# Copyright 2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_DEPEND="2:2.7 3:3.2"
SUPPORT_PYTHON_ABIS="1"

inherit base linux-info distutils

DESCRIPTION="Deduplication for Btrfs filesystems"
HOMEPAGE="http://pypi.python.org/pypi/bedup https://github.com/g2p/bedup"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=">=dev-python/cffi-0.4.2
>=sys-kernel/linux-headers-3.3
>=sys-libs/glibc-2.14
sys-fs/btrfs-progs"
RDEPEND="${DEPEND}
virtual/python-argparse
dev-python/pyxdg
dev-python/sqlalchemy
dev-python/alembic
dev-python/contextlib2"

DOCS="COPYING README.rst"

MINKV="3.3"

distutils_src_compile_pre_hook() {
	local CONFIG_CHECK="~BTRFS_FS"
	kernel_is -ge ${MINKV//./ } || ewarn "Kernel version at least ${MINKV} required"
	check_extra_config
}
