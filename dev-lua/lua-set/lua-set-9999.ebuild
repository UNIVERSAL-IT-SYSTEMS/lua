# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: This ebuild is from Lua overlay; Bumped by mva; $

EAPI=5

VCS="git-r3"
inherit lua

DESCRIPTION="Straightforward Set library for Lua"
HOMEPAGE="https://github.com/wscherphof/lua-set"
SRC_URI=""

EGIT_REPO_URI="https://github.com/wscherphof/lua-set"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

each_lua_install() {
	dolua src/*
}