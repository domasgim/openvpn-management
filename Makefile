include $(TOPDIR)/rules.mk

PKG_NAME:=openvpn-management
PKG_RELEASE:=1
PKG_VERSION:=1.0.0
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk

define Package/openvpn-management
	SECTION:=utils
	CATEGORY:=Utilities
	TITLE:=openvpn-management
	DEPENDS:=+libubus +libubox +libblobmsg-json
endef

define Package/openvpn-management/description
	OpenVPN ubus management system
endef

define Package/openvpn-management/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/openvpn-management $(1)/usr/bin/openvpn-management
endef

$(eval $(call BuildPackage,openvpn-management))
