# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.6.9999
#hackport: flags: -developer

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Fast combinator parsing for bytestrings and text"
HOMEPAGE="https://github.com/bos/attoparsec"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=">=dev-haskell/scientific-0.2:=[profile?]
	>=dev-haskell/text-0.11.3.1:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( >=dev-haskell/quickcheck-2.4
		>=dev-haskell/test-framework-0.4
		>=dev-haskell/test-framework-quickcheck2-0.2 )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-developer
}
