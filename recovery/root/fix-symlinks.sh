#!/sbin/sh

REAL_BOOT=`readlink -f /dev/block/platform/soc/by-name/boot_x`
REAL_RECOVERY=`readlink -f /dev/block/platform/soc/by-name/recovery_x`
AMONET_BOOT=`readlink -f /dev/block/platform/soc/by-name/boot`
AMONET_RECOVERY=`readlink -f /dev/block/platform/soc/by-name/recovery`
REAL_LK=`readlink -f /dev/block/platform/soc/by-name/lk`
REAL_TEE1=`readlink -f /dev/block/platform/soc/by-name/TEE1`
REAL_TEE2=`readlink -f /dev/block/platform/soc/by-name/TEE2`

rm /dev/block/platform/soc/by-name/boot
rm /dev/block/platform/soc/by-name/recovery
rm /dev/block/platform/soc/by-name/lk
rm /dev/block/platform/soc/by-name/TEE1
rm /dev/block/platform/soc/by-name/TEE2

ln -s $REAL_BOOT /dev/block/platform/soc/by-name/boot
ln -s $REAL_RECOVERY /dev/block/platform/soc/by-name/recovery
ln -s $AMONET_BOOT /dev/block/platform/soc/by-name/boot_amonet
ln -s $AMONET_RECOVERY /dev/block/platform/soc/by-name/recovery_amonet
ln -s $REAL_LK /dev/block/platform/soc/by-name/lk_real
ln -s $REAL_TEE1 /dev/block/platform/soc/by-name/TEE1_real
ln -s $REAL_TEE2 /dev/block/platform/soc/by-name/TEE2_real

ln -s /dev/null /dev/block/platform/soc/by-name/lk
ln -s /dev/null /dev/block/platform/soc/by-name/tee1
ln -s /dev/null /dev/block/platform/soc/by-name/tee2
