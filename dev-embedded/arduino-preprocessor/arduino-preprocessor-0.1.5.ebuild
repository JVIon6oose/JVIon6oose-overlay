# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="The Arduino Sketch preprocessor, turning sketches into valid C++."
HOMEPAGE="https://github.com/arduino/arduino-preprocessor"
SRC_URI="https://github.com/JVIon6oose/${PN}/tarball/${PF}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=">=sys-devel/clang-6.0.1"