# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)
# Copyright (C) 2023-present NeoTheFox (https://github.com/NeoTheFox)

PKG_NAME="f2fs-tools"
PKG_VERSION="06c027abc6153c4a97cba5317844e8dcaaee3cf7"
PKG_LICENSE="GPL"
PKG_SITE="https://git.kernel.org/pub/scm/linux/kernel/git/jaegeuk/f2fs-tools.git/about"
PKG_URL="https://git.kernel.org/pub/scm/linux/kernel/git/jaegeuk/${PKG_NAME}.git"
PKG_DEPENDS_HOST="gcc:host"
PKG_DEPENDS_TARGET="toolchain"
PKG_TOOLCHAIN=configure
PKG_DEPENDS_INIT="toolchain"
PKG_LONGDESC="The filesystem utilities for the F2FS"

PKG_CONFIGURE_OPTS_HOST="--prefix=${TOOLCHAIN}/ \
                         --bindir=${TOOLCHAIN}/bin \
                         --sbindir=${TOOLCHAIN}/bin"

PKG_CONFIGURE_OPTS_TARGET="--prefix=${INSTALL}/usr \
                           --bindir=${INSTALL}/sbin"

pre_configure() {
  #sh ${PKG_BUILD}/autogen.sh
  autoreconf -fi
}

post_makeinstall_target() {
  rm -rf ${INSTALL}/usr/sbin/mklost+found
  rm -rf ${INSTALL}/usr/sbin/sg_write_buffer
  rm -rf ${INSTALL}/home
}
