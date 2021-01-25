# libsaithrift-dev package

SAI_VER = 0.9.4

LIBSAITHRIFT_DEV = libsaithrift-dev_$(SAI_VER)_armhf.deb
$(LIBSAITHRIFT_DEV)_SRC_PATH = $(SRC_PATH)/sonic-sairedis/SAI
$(LIBSAITHRIFT_DEV)_DEPENDS += $(LIBTHRIFT) $(LIBTHRIFT_DEV) $(PYTHON_THRIFT) $(THRIFT_COMPILER) $(BRCM_SAI) $(BRCM_SAI_DEV)
$(LIBSAITHRIFT_DEV)_RDEPENDS += $(LIBTHRIFT) $(BRCM_SAI)
SONIC_DPKG_DEBS += $(LIBSAITHRIFT_DEV)

PYTHON_SAITHRIFT = python-saithrift_$(SAI_VER)_armhf.deb
$(eval $(call add_extra_package,$(LIBSAITHRIFT_DEV),$(PYTHON_SAITHRIFT)))

SAISERVER = saiserver_$(SAI_VER)_armhf.deb
$(SAISERVER)_RDEPENDS += $(LIBTHRIFT) $(BRCM_SAI)
$(eval $(call add_extra_package,$(LIBSAITHRIFT_DEV),$(SAISERVER)))

SAISERVER_DBG = saiserver-dbg_$(SAI_VER)_armhf.deb
$(SAISERVER_DBG)_RDEPENDS += $(SAISERVER)
$(eval $(call add_extra_package,$(LIBSAITHRIFT_DEV),$(SAISERVER_DBG)))
