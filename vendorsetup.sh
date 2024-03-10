echo "Syncing additional trees"
rm -rf hardware/xiaomi/megvii
rm -rf hardware/google/pixel/kernel_headers/Android.bp
git clone https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi -b lineage-18.1
git clone https://github.com/shifty-d/android_vendor_xiaomi_spes.git vendor/xiaomi/spes
git clone https://github.com/GuidixX/kernel_xiaomi_spes kernel/xiaomi/spes --depth=1
git clone https://github.com/TogoFire/packages_apps_ViPER4AndroidFX packages/apps/ViPER4AndroidFX
git clone https://github.com/GuidixX/vendor_xiaomi_miui_camera vendor/xiaomi/camera --depth=1
sed -i '18s/error/warning/' build/core/Makefile
