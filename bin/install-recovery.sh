#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY:7708672:9e21c0fc91ea1642dd956fb30cc4044719ade518; then
  applypatch EMMC:/dev/block/platform/dw_mmc.0/by-name/BOOT:7497728:2e60c979878c0856f2ac4788d1dea868a0834e16 EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY 9e21c0fc91ea1642dd956fb30cc4044719ade518 7708672 2e60c979878c0856f2ac4788d1dea868a0834e16:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
