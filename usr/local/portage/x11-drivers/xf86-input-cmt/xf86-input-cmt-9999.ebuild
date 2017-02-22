# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit git-r3 xorg-2

DESCRIPTION="X11 ChromiumOS touchpad driver ported to Linux"
HOMEPAGE="https://github.com/hugegreenbug/xf86-input-cmt"
EGIT_REPO_URI=( {https,git}://github.com/hugegreenbug/${PN}.git )
DOCS+=( README.md )

SLOT="0"
KEYWORDS="-*"

RDEPEND="
	x11-base/xorg-server
	x11-libs/libevdevc
	x11-libs/libgestures"
DEPEND="${RDEPEND}"
