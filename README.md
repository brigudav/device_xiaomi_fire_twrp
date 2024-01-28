TWRP Device Tree for Redmi 12 (fire)
===========================================

## Device specifications

Basic   | Spec Sheet
-------:|:-------------------------
OS	| Android 13, MIUI 14
CPU     | Octa-core (2x2.0 GHz Cortex-A75 & 6x1.8 GHz Cortex-A55)
Chipset | MediaTek Helio G88 (MT6768) (12nm)
GPU     | Mali-G52 MC2
Memory  | 4/8GB RAM
Storage | 128/256GB
MicroSD | microSD, microSDHC, microSDXC
Battery | Li-Ion 5000 mAh battery
Resolution | 6.79 inches, IPS, 1080 x 2460 pixels
Camera (Rear)  | 50 MP, f/1.8,8 MP, f/2.2, 120˚ (ultrawide),2 MP, f/2.4 (macro)
Rear Camera Features | LED flash, HDR, panorama
Camera (Front)  | 8 MP, f/2.25, (wide)
Features| Fingerprint (side-mounted), accelerometer, proximity, compass


## Device picture

![Redmi 12](https://fdn2.gsmarena.com/vv/pics/xiaomi/xiaomi-redmi-12-1.jpg "Redmi 12")

## Building
```bash
source build/envsetup.sh
lunch twrp_fire-eng
mka bootimage
```
## Features

Works:
