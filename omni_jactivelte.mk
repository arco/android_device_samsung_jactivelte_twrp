# Release name
PRODUCT_RELEASE_NAME := jactivelte

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := jactivelte
PRODUCT_NAME := omni_jactivelte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-I9295
PRODUCT_MANUFACTURER := samsung
