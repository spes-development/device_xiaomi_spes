# ROM source patches

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
echo -e "${color}Cloning vendor & kernel from tanvirr007${end}"
git clone https://github.com/spes-development/vendor_xiaomi_spes -b 14.0-Lineage vendor/xiaomi/spes
git clone https://github.com/spes-development/kernel_xiaomi_sm6225 --depth=1 -b NaughtySilver kernel/xiaomi/sm6225

# Lineage-21 Hardware Source
echo -e "${color}Cloning Hardware from Lineage-21${end}"
git clone https://github.com/LineageOS/android_hardware_xiaomi.git -b lineage-21 hardware/xiaomi
