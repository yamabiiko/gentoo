# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Creation of type-safe, RESTful web applications"
HOMEPAGE="https://www.yesodweb.com/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.5:=[profile?]
	dev-haskell/auto-update:=[profile?]
	>=dev-haskell/blaze-builder-0.2.1.4:=[profile?] <dev-haskell/blaze-builder-0.5:=[profile?]
	>=dev-haskell/blaze-html-0.5:=[profile?]
	>=dev-haskell/blaze-markup-0.5.1:=[profile?]
	dev-haskell/byteable:=[profile?]
	>=dev-haskell/case-insensitive-0.2:=[profile?]
	>=dev-haskell/cereal-0.3:=[profile?]
	>=dev-haskell/clientsession-0.9.1:=[profile?] <dev-haskell/clientsession-0.10:=[profile?]
	>=dev-haskell/conduit-1.2:=[profile?]
	dev-haskell/conduit-extra:=[profile?]
	>=dev-haskell/cookie-0.4.2:=[profile?] <dev-haskell/cookie-0.5:=[profile?]
	dev-haskell/data-default:=[profile?]
	dev-haskell/deepseq-generics:=[profile?]
	>=dev-haskell/exceptions-0.6:=[profile?]
	>=dev-haskell/fast-logger-2.2:=[profile?]
	>=dev-haskell/http-types-0.7:=[profile?]
	>=dev-haskell/lifted-base-0.1.2:=[profile?]
	>=dev-haskell/monad-control-0.3:=[profile?] <dev-haskell/monad-control-1.1:=[profile?]
	>=dev-haskell/monad-logger-0.3.1:=[profile?] <dev-haskell/monad-logger-0.4:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/mwc-random:=[profile?]
	>=dev-haskell/old-locale-1.0.0.2:=[profile?] <dev-haskell/old-locale-1.1:=[profile?]
	>=dev-haskell/parsec-2:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/path-pieces-0.1.2:=[profile?] <dev-haskell/path-pieces-0.3:=[profile?]
	dev-haskell/primitive:=[profile?]
	>=dev-haskell/random-1.0.0.2:=[profile?] <dev-haskell/random-1.2:=[profile?]
	>=dev-haskell/resourcet-0.4.9:=[profile?] <dev-haskell/resourcet-1.2:=[profile?]
	dev-haskell/safe:=[profile?]
	dev-haskell/semigroups:=[profile?]
	>=dev-haskell/shakespeare-2.0:=[profile?]
	>=dev-haskell/text-0.7:=[profile?]
	>=dev-haskell/transformers-base-0.4:=[profile?]
	dev-haskell/unix-compat:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?]
	>=dev-haskell/vector-0.9:=[profile?] <dev-haskell/vector-0.12:=[profile?]
	>=dev-haskell/wai-3.0:=[profile?]
	>=dev-haskell/wai-extra-3.0.7:=[profile?]
	>=dev-haskell/wai-logger-0.2:=[profile?]
	>=dev-haskell/warp-3.0.2:=[profile?]
	dev-haskell/word8:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/async
		>=dev-haskell/hspec-1.3
		dev-haskell/hspec-expectations
		dev-haskell/hunit
		dev-haskell/network
		>=dev-haskell/quickcheck-2 <dev-haskell/quickcheck-3
		dev-haskell/streaming-commons )
"
