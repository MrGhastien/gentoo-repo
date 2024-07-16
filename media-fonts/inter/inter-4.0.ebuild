EAPI=8

inherit font

DESCRIPTION="The Inter font family"
HOMEPAGE="https://rsms.me/inter/"
SRC_URI="https://github.com/rsms/inter/releases/download/v${PV}/Inter-${PV}.zip -> ${P}.zip"
LICENSE="OFL-1.1"

SLOT="0"
KEYWORDS="~alpha amd64 arm arm64 hppa ~ia64 ppc ppc64 ~riscv sparc x86"
BDEPEND="app-arch/unzip"

S="${WORKDIR}/extras/otf"
FONT_SUFFIX="otf"
