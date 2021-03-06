# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit cmake-multilib git-r3

DESCRIPTION="MessagePack is a binary-based efficient data interchange format"
HOMEPAGE="http://msgpack.org/ https://github.com/msgpack/msgpack-c/"
EGIT_REPO_URI="https://github.com/${PN}/${PN}-c"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS=""
IUSE="static-libs test"

DEPEND="test? ( >=dev-cpp/gtest-1.6.0-r2[${MULTILIB_USEDEP}] )"

DOCS=( CHANGELOG.md QUICKSTART-C.md QUICKSTART-CPP.md README.md )
