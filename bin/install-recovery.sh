#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY:8454144:f0c04dd4c8b34cb6c90a9e2cfbebb65f6c4ed817; then
  applypatch EMMC:/dev/block/platform/dw_mmc.0/by-name/BOOT:7966720:1acb46ba3ce705074488d8fff3e5f13ca6d803f0 EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY f0c04dd4c8b34cb6c90a9e2cfbebb65f6c4ed817 8454144 1acb46ba3ce705074488d8fff3e5f13ca6d803f0:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
