TERMUX_PKG_HOMEPAGE=https://github.com/KhronosGroup/Vulkan-ExtensionLayer
TERMUX_PKG_DESCRIPTION="Vulkan Tools and Utilities"
TERMUX_PKG_LICENSE="Apache-2.0"
TERMUX_PKG_MAINTAINER="xMeM <haooy@outlook.com>"
_COMMIT=d5624d42d8b2debbd910ad25662a05c751eb38b7
TERMUX_PKG_VERSION="0.0.1-r106.${_COMMIT:0:7}"
TERMUX_PKG_SRCURL=git+https://github.com/xMeM/vulkan-wsi-layer
TERMUX_PKG_GIT_BRANCH=main
TERMUX_PKG_DEPENDS="libc++"
TERMUX_PKG_BUILD_DEPENDS="vulkan-headers, vulkan-loader-generic"
TERMUX_PKG_RECOMMENDS="vulkan-loader-generic"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DVULKAN_HEADERS_INSTALL_DIR=$TERMUX_PREFIX
"

termux_step_post_get_source() {
	git fetch --unshallow
	git checkout $_COMMIT
}
