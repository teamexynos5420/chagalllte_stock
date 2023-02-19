#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY:8454144:a0a6123d967d70452b7bcf1b77b7a3a775971388; then
  applypatch EMMC:/dev/block/platform/dw_mmc.0/by-name/BOOT:7966720:f0955468326e5872ae3e7fc11b891343a7be87b4 EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY a0a6123d967d70452b7bcf1b77b7a3a775971388 8454144 f0955468326e5872ae3e7fc11b891343a7be87b4:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
