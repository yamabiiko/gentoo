# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Interface for versioning file stores"
HOMEPAGE="http://hackage.haskell.org/package/filestore"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+maxcount"

RESTRICT=test # one darcs test fails

RDEPEND=">=dev-haskell/diff-0.2:=[profile?] <dev-haskell/diff-0.4:=[profile?]
	>=dev-haskell/old-locale-1.0:=[profile?] <dev-haskell/old-locale-1.1:=[profile?]
	>=dev-haskell/parsec-2:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/split-0.1:=[profile?] <dev-haskell/split-0.3:=[profile?]
	>=dev-haskell/utf8-string-0.3:=[profile?] <dev-haskell/utf8-string-1.1:=[profile?]
	>=dev-haskell/xml-1.3:=[profile?] <dev-haskell/xml-1.4:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( >=dev-haskell/hunit-1.2 <dev-haskell/hunit-1.3
		dev-haskell/mtl )
"
DEPEND+="
	test? ( dev-vcs/darcs
		dev-vcs/git
		dev-vcs/mercurial
	)
"

src_prepare() {
	epatch "${FILESDIR}"/${P}-ghc-8.patch

	cabal_chdeps \
		'time >= 1.1 && < 1.6' 'time >= 1.1' \
		'process >= 1.0 && < 1.3' 'process >= 1.0'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag maxcount maxcount)
}

src_test() {
	export HOME=${T}/
	git config --global user.email "git@src_test"
	git config --global user.name "Mr. ${P} The Test"

	haskell-cabal_src_test
}
