#
# Copyright (C) 2015-2016 Allwinner
#
# This is free software, licensed under the GNU General Public License v2.
# See /build/LICENSE for more information.

define KernelPackage/vin-v4l2
  SUBMENU:=$(VIDEO_MENU)
  TITLE:=Video input support (staging)
  DEPENDS:=
  FILES:=$(LINUX_DIR)/drivers/net/wireless/ath/ath.ko
  FILES+=$(LINUX_DIR)/drivers/net/wireless/ath/ath9k/ath9k_common.ko
  FILES+=$(LINUX_DIR)/drivers/net/wireless/ath/ath9k/ath9k.ko
  FILES+=$(LINUX_DIR)/drivers/net/wireless/ath/ath9k/ath9k_hw.ko
  FILES+=$(LINUX_DIR)/drivers/net/wireless/ath/ath9k/ath9k_htc.ko
  FILES+=$(LINUX_DIR)/drivers/media/v4l2-core/videobuf2-core.ko
  FILES+=$(LINUX_DIR)/drivers/media/v4l2-core/videobuf2-dma-contig.ko
  FILES+=$(LINUX_DIR)/drivers/media/v4l2-core/videobuf2-memops.ko
  FILES+=$(LINUX_DIR)/drivers/media/v4l2-core/videobuf2-v4l2.ko
  FILES+=$(LINUX_DIR)/drivers/media/platform/sunxi-vin/vin_io.ko
  FILES+=$(LINUX_DIR)/drivers/media/platform/sunxi-vin/modules/sensor/imx317_mipi.ko
  FILES+=$(LINUX_DIR)/drivers/media/platform/sunxi-vin/modules/sensor/imx307_mipi.ko
  FILES+=$(LINUX_DIR)/drivers/media/platform/sunxi-vin/modules/sensor/tp9950.ko
  FILES+=$(LINUX_DIR)/drivers/iio/imu/da380/da380.ko
  FILES+=$(LINUX_DIR)/drivers/media/platform/sunxi-vin/vin_v4l2.ko
  AUTOLOAD:=$(call AutoProbe,ath ath9k_htc ath9k_common ath9k ath9k_hw videobuf2-core videobuf2-dma-contig videobuf2-memops videobuf2-v4l2 vin_io imx317_mipi imx307_mipi tp9950 da380 vin_v4l2)
endef

define KernelPackage/vin_v4l2/description
 Kernel modules for video input support
endef

$(eval $(call KernelPackage,vin-v4l2))

define KernelPackage/EISE-ISE
  SUBMENU:=$(VIDEO_MENU)
  TITLE:=Video ISE&EISE support (staging)
  DEPENDS:=
  AUTOLOAD:=$(call AutoProbe,sunxi_ise sunxi_eise)
endef

define KernelPackage/EISE-ISE/description
 Kernel modules for video ISE&EISE support
endef

$(eval $(call KernelPackage,EISE-ISE))

define KernelPackage/net-xr819
  SUBMENU:=$(WIRELESS_MENU)
  TITLE:=xr819 support (staging)
  DEPENDS:=
  FILES:=$(LINUX_DIR)/drivers/net/wireless/xr819/wlan/xradio_core.ko
  FILES+=$(LINUX_DIR)/drivers/net/wireless/xr819/wlan/xradio_wlan.ko
  FILES+=$(LINUX_DIR)/drivers/net/wireless/xr819/umac/xradio_mac.ko
  AUTOLOAD:=$(call AutoProbe, xradio_mac xradio_core xradio_wlan)
endef

define KernelPackage/net-xr819/description
 Kernel modules for xr819 support
endef

$(eval $(call KernelPackage,net-xr819))

define KernelPackage/hmac
  SUBMENU:=$(WIRELESS_MENU)
  TITLE:=hmac support (staging)
  DEPENDS:=
  FILES:=$(LINUX_DIR)/crypto/hmac.ko
  AUTOLOAD:=$(call AutoProbe,hmac)
endef

define KernelPackage/hmac/description
 Kernel modules for hmac support
endef

$(eval $(call KernelPackage,hmac))

define KernelPackage/net-broadcom
  SUBMENU:=$(WIRELESS_MENU)
  TITLE:=broadcom(ap6212/ap6335/ap6255...) support (staging)
  DEPENDS:=
  FILES:=$(LINUX_DIR)/drivers/net/wireless/bcmdhd/bcmdhd.ko
  AUTOLOAD:=$(call AutoProbe,bcmdhd,1)
endef

define KernelPackage/net-broadcom/description
 Kernel modules for broadcom wifi support
endef

$(eval $(call KernelPackage,net-broadcom))

define KernelPackage/touchscreen-gt911
  SUBMENU:=$(INPUT_MODULES_MENU)
  TITLE:=Goodix GT911 touchscreen panel support
  DEPENDS:=
  FILES:=$(LINUX_DIR)/drivers/input/touchscreen/gt911/gt9xx_ts.ko
  AUTOLOAD:=$(call AutoProbe,gt9xx_ts,1)
endef

define KernelPackage/touchscreen-gt911/description
 Kernel modules for touchscreen gt911 support
endef

$(eval $(call KernelPackage,touchscreen-gt911))
