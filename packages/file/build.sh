TERMUX_PKG_HOMEPAGE=https://darwinsys.com/file/
TERMUX_PKG_DESCRIPTION="Command-line tool that tells you in words what kind of data a file contains"
TERMUX_PKG_LICENSE="BSD 2-Clause"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=5.46
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=https://astron.com/pub/file/file-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=c9cc77c7c560c543135edc555af609d5619dbef011997e988ce40a3d75d86088
TERMUX_PKG_DEPENDS="zlib"
TERMUX_PKG_BREAKS="file-dev"
TERMUX_PKG_REPLACES="file-dev"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="ac_cv_func_mmap_fixed_mapped=yes"
TERMUX_PKG_EXTRA_MAKE_ARGS="FILE_COMPILE=$TERMUX_PKG_HOSTBUILD_DIR/src/file"
TERMUX_PKG_HOSTBUILD=true
TERMUX_PKG_GROUPS="base-devel"
