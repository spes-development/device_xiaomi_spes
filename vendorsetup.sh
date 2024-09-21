## ROM source patches

color="\033[0;32m"
end="\033[0m"

echo -e "${color}Applying patches${end}"
sleep 1

# Remove pixel headers to avoid conflicts
rm -rf hardware/google/pixel/kernel_headers/Android.bp

# Remove hardware/lineage/compat to avoid conflicts
rm -rf hardware/lineage/compat/Android.bp

# Sepolicy fix for imsrcsd
echo -e "${color}Switch back to legacy imsrcsd sepolicy${end}"
rm -rf device/qcom/sepolicy_vndr/legacy-um/qva/vendor/bengal/ims/imsservice.te
cp device/qcom/sepolicy_vndr/legacy-um/qva/vendor/bengal/legacy-ims/hal_rcsservice.te device/qcom/sepolicy_vndr/legacy-um/qva/vendor/bengal/ims/hal_rcsservice.te

# Vendor & Kernel Sources
git clone https://github.com/tanvirr007/vendor_xiaomi_spes -b 13.0 vendor/xiaomi/spes
git clone https://github.com/tanvirr007/kernel_xiaomi_sm6225 kernel/xiaomi/sm6225

# Sepolicy
git clone -b lineage-20.0 https://github.com/LineageOS/android_device_qcom_sepolicy.git device/qcom/sepolicy_vndr/legacy-um/
