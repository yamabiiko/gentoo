# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Types for representing a structured document"
HOMEPAGE="http://johnmacfarlane.net/pandoc"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.6.2:=[profile?] <dev-haskell/aeson-1.1:=[profile?]
	>=dev-haskell/deepseq-generics-0.1:=[profile?]
	>=dev-haskell/quickcheck-2:2=[profile?]
	>=dev-haskell/syb-0.1:=[profile?] <dev-haskell/syb-0.7:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( >=dev-haskell/hunit-1.2 <dev-haskell/hunit-1.6
		>=dev-haskell/quickcheck-2.4 <dev-haskell/quickcheck-2.10
		~dev-haskell/string-qq-0.0.2
		>=dev-haskell/test-framework-0.3 <dev-haskell/test-framework-0.9
		>=dev-haskell/test-framework-hunit-0.2 <dev-haskell/test-framework-hunit-0.4
		>=dev-haskell/test-framework-quickcheck2-0.2.9 <dev-haskell/test-framework-quickcheck2-0.4 )
"
