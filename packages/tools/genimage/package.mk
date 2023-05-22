# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023-present NeoTheFox (https://github.com/NeoTheFox)

PKG_NAME="genimage"
PKG_VERSION="16"
PKG_SHA256="869f9662d3b778c69b1d1fe70df658e1c9e90aeda26abb753f6fe55e8b0c6e73"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/pengutronix/genimage"
PKG_URL="https://github.com/pengutronix/${PKG_NAME}/releases/download/v${PKG_VERSION}/${PKG_NAME}-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_HOST="libconfuse:host e2fsprogs:host f2fs-tools:host"
PKG_LONGDESC="genimage: a tool to generate multiple filesystem and flash/disk images from a given root filesystem tree."
PKG_BUILD_FLAGS="+pic:host"
