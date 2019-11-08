# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Parsing and pretty printing of Python code"
HOMEPAGE="https://github.com/bjpop/language-python"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/monads-tf-0.1:=[profile?] <dev-haskell/monads-tf-0.2:=[profile?]
	>=dev-haskell/utf8-string-1:=[profile?] <dev-haskell/utf8-string-2:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	dev-haskell/alex
	>=dev-haskell/cabal-1.18.1.3
	dev-haskell/happy
"
