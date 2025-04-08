EAPI=7

inherit font

MY_COMMIT_HASH='111eb14e367888c9374da4da0b018e72cf8ac46d'
MY_FONT_NAME="RobotoMono"

DESCRIPTION="A monospaced addition to the Roboto type family"
HOMEPAGE="https://fonts.google.com/specimen/Roboto+Mono"
SRC_URI="https://github.com/googlefonts/RobotoMono/archive/${MY_COMMIT_HASH}.zip -> ${P}.zip"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~loong ~riscv x86"
IUSE="+otf ttf"

REQUIRED_USE="|| ( otf ttf )"

MY_DIR="${MY_FONT_NAME}-${MY_COMMIT_HASH}"
S="${WORKDIR}/${MY_DIR}"

DOCS=( README.md OFL.txt )

src_install() {
	use otf && { FONT_S="${S}/fonts//otf"; FONT_SUFFIX="otf"; }
	use ttf && { FONT_S="${S}/fonts/ttf"; FONT_SUFFIX="ttf"; }

	font_src_install
	einstalldocs
}
