# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit git-r3

DESCRIPTION="ChromiumOS libgestures modified to compile for Linux"
HOMEPAGE="https://github.com/hugegreenbug/libgestures"
EGIT_REPO_URI=( {https,git}://github.com/hugegreenbug/${PN}.git )
DOCS+=( README.md )

SLOT="0"
KEYWORDS="-*"

DEPEND="dev-libs/jsoncpp"
RDEPEND="${DEPEND}"
