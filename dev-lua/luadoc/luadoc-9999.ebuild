# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: This ebuild is from Lua overlay; Bumped by mva; $

EAPI="5"

VCS="git-r3"
inherit lua

DESCRIPTION="LuaDoc is a documentation tool for Lua source code"
HOMEPAGE="http://keplerproject.github.io/luadoc/"
SRC_URI=""

EGIT_REPO_URI="https://github.com/keplerproject/luadoc/"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE="doc"

DEPEND=""
RDEPEND="
	dev-lua/luafilesystem
"

READMES=( README.md )
HTML_DOCS=( doc/us/ )


all_lua_prepare() {
	# >=lua-5.1.3
	find . -name '*.lua' | xargs sed -e "s/gfind/gmatch/g" -i || die
}

each_lua_install() {
	dolua src/${PN}
}

all_lua_install() {
	newbin src/${PN}.lua.in ${PN}
}
