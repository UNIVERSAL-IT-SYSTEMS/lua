# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

VCS="git"
LUA_COMPAT="luajit2"
GITHUB_A="openresty"
GITHUB_PN="lua-${PN}"

inherit lua

DESCRIPTION="String utilities and common hash functions for ngx_lua and LuaJIT"
HOMEPAGE="https://github.com/openresty/lua-resty-string"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE="naive-random"

RDEPEND="
	www-servers/nginx[nginx_modules_http_lua,ssl]
	dev-libs/openssl
"
DEPEND="
	${RDEPEND}
"
PDEPEND="!naive-random? ( dev-lua/resty-random )"

DOCS=(README.markdown)

all_lua_prepare() {
	use naive-random || rm lib/resty/random.lua
}

each_lua_install() {
	dolua_jit lib/resty
}
