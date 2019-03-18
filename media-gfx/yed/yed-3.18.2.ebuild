# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit eutils java-pkg-2

DESCRIPTION="Diagram and graph editor that generates high-quality drawings."
HOMEPAGE="http://www.yworks.com/en/products_yed_about.html"
SRC_URI="yEd-${PV}.zip"
DOWNLOAD_URL="http://www.yworks.com/en/products_download.php?file=${SRC_URI}"

LICENSE="yEd"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RESTRICT="fetch"

DEPEND="
		app-arch/unzip
		${RDEPEND}"
RDEPEND=">=virtual/jre-1.8"
BDEPEND=""

pkg_nofetch() {
	einfo "Please download the ${SRC_URI} from"
	einfo "${DOWNLOAD_URL}"
	einfo "and place it in ${A}"
}

src_unpack() {
	unzip "/usr/portage/distfiles/${A}" -d "${S}"
}

src_install() {
	java-pkg_dojar "${S}/${P}"/${PN}.jar
	java-pkg_dojar "${S}/${P}"/lib/vectorgraphics.jar
	java-pkg_dolauncher ${PN} --jar ${PN}.jar
	make_desktop_entry ${PN} yEd
	dodoc "${S}/${P}"/license.html
}