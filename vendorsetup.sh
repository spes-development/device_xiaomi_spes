echo "Syncing additional trees"
rm -rf hardware/xiaomi/megvii
rm -rf hardware/google/pixel/kernel_headers/Android.bp
git clone https://github.com/spes-development/hardware_xiaomi -b lineage-18.1
git clone https://github.com/spes-development/vendor_xiaomi_spes -b 11.0 vendor/xiaomi/spes
git clone https://github.com/spes-development/kernel_xiaomi_sm6225 -b NaughtySilver kernel/xiaomi/sm6225 --depth=1
git clone https://github.com/spes-development/packages_apps_ViPER4AndroidFX packages/apps/ViPER4AndroidFX
git clone https://github.com/spes-development/vendor_xiaomi_miui_camera vendor/xiaomi/camera --depth=1
