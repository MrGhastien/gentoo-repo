EAPI=8

inherit font

DESCRIPTION="A monospaced addition to the Roboto type family"
HOMEPAGE="https://fonts.google.com/specimen/Roboto+Mono"
SRC_URI="https://github.com/googlefonts/RobotoMono/archive/111eb14e367888c9374da4da0b018e72cf8ac46d.zip -> ${P}.zip"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~loong ~riscv x86"
IUSE="+otf ttf"

REQUIRED_USE="|| ( otf ttf )"

S="${WORKDIR}/${P}"

DOCS=( README.md LICENSE )

src_prepare() {
	default

	use ttf && { rm "${S}"/ttf/FiraSans-*.ttf || die; }
	use otf && { rm "${S}"/otf/FiraSans*.otf || die; }
}

src_install() {
	use otf && { FONT_S="${S}/otf"; FONT_SUFFIX="otf"; }
	use ttf && { FONT_S="${S}/ttf"; FONT_SUFFIX="ttf"; }

	font_src_install
	einstalldocs
}
