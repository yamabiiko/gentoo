# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.1.9999

# haddock is disabled as it chokes in .hsc file:
#     Database/HDBC/ODBC/Statement.hsc:462:3:
#        parse error on input `Word16'
CABAL_FEATURES="bin lib profile hoogle hscolour"
inherit haskell-cabal

MY_PN="HDBC-odbc"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="ODBC driver for HDBC"
HOMEPAGE="https://github.com/hdbc/hdbc-odbc"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="2/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="test"
RESTRICT="test" # requires configured ODBC

RDEPEND=">=dev-haskell/hdbc-2.1.0:=[profile?]
		dev-haskell/mtl:=[profile?]
		dev-haskell/utf8-string:=[profile?]
		>=dev-lang/ghc-7.0.1:=
		>=dev-db/unixODBC-2.2
	"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6
		test? ( dev-haskell/convertible
			dev-haskell/hunit
			dev-haskell/quickcheck
			dev-haskell/testpack
		)
	"

S="${WORKDIR}/${MY_P}"

src_prepare() {
	epatch "${FILESDIR}/${PN}-2.3.1.0-ghc-7.6.patch"
}

src_configure() {
	cabal_src_configure $(cabal_flag test buildtests)
}

src_test() {
	# default tests
	haskell-cabal_src_test || die "cabal test failed"

	# built custom tests
	"${S}/dist/build/runtests/runtests" || die "unit tests failed"
}

src_install() {
	cabal_src_install

	# if tests were enabled, make sure the unit test driver is deleted
	rm -f "${ED}/usr/bin/runtests"
}
