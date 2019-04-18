# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

DESCRIPTION="The Arduino Sketch preprocessor, turning sketches into valid C++."
HOMEPAGE="https://github.com/arduino/arduino-preprocessor"
SRC_URI="https://api.github.com/repos/JVIon6oose/${PN}/tarball/${PF} -> ${PF}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=">=sys-devel/clang-6.0.1"

S=${WORKDIR}

pkg_info() {
	"${ROOT}"/usr/bin/arduino-preprocessor -version
}
