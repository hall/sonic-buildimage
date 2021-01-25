# Accton Platform modules

ACCTON_AS4610_54P_PLATFORM_MODULE_VERSION = 1.1

export ACCTON_AS4610_54P_PLATFORM_MODULE_VERSION

ACCTON_AS4610_54P_PLATFORM_MODULE = sonic-platform-accton-as4610-54p_$(ACCTON_AS4610_54P_PLATFORM_MODULE_VERSION)_armhf.deb
$(ACCTON_AS4610_54P_PLATFORM_MODULE)_SRC_PATH = $(PLATFORM_PATH)/sonic-platform-modules-accton
$(ACCTON_AS4610_54P_PLATFORM_MODULE)_DEPENDS += $(LINUX_HEADERS) $(LINUX_HEADERS_COMMON)
$(ACCTON_AS4610_54P_PLATFORM_MODULE)_PLATFORM = armhf-accton_as4610_54p-r0
SONIC_DPKG_DEBS += $(ACCTON_AS4610_54P_PLATFORM_MODULE)
