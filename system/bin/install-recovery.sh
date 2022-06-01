#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:16071980:c72fadf2dfb591606504c4425de04210f1dcd2c2; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:14613800:5fb82f64960bd9bc2946ec68216b5b5e84d77d7c EMMC:/dev/block/bootdevice/by-name/recovery c72fadf2dfb591606504c4425de04210f1dcd2c2 16071980 5fb82f64960bd9bc2946ec68216b5b5e84d77d7c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
