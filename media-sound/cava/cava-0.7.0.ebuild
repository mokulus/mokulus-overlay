# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Console-based Audio Visualizer for ALSA"
HOMEPAGE="https://github.com/karlstav/cava"
SRC_URI="https://github.com/karlstav/cava/archive/${PV}.tar.gz"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="sci-libs/fftw:*
		dev-libs/iniparser:0
		sys-libs/ncurses"
RDEPEND="${DEPEND}"

src_configure() {
	./autogen.sh
	econf
}
