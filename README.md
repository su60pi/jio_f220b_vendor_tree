# Proprietary Vendor Tree for Jio Phone F220B (LYF F220B)

This repository contains all prebuilt proprietary vendor binaries, HALs, and firmware blobs extracted directly from the genuine Stock KaiOS 2.5 (Android 6.0.1 Marshmallow base) Jio Phone F220B.

Target build path: `vendor/jio/f220b/`

---

## Blobs Included (54 Files, ~16 MB)

- **Camera Stack & Daemons**:
  - `bin/mm-qcamera-daemon`
  - `lib/hw/camera.msm8909.so`
  - `lib/libmmcamera_interface.so`
  - `vendor/lib/libmmcamera2_*.so` (all modules: sensor, c2d, is, isp, pproc, q3a, stats, wnr, imglib)
  - `vendor/lib/libmmcamera_sp250a.so` (SuperPix 2MP Rear Camera)
  - `vendor/lib/libchromatix_sp250a_*.so` (common, preview, snapshot, default video)
  - `vendor/lib/libmmcamera_sp0a09.so` (SuperPix VGA Front Camera)
  - `vendor/lib/libchromatix_sp0a09_*.so` (common, preview, default video)
- **Audio HAL & Processing**:
  - `lib/hw/audio.primary.msm8909.so`
  - `lib/libaudio-resampler.so`
- **Adreno 304 GPU & Display**:
  - `vendor/lib/egl/libEGL_adreno.so`
  - `vendor/lib/egl/libGLESv1_CM_adreno.so`
  - `vendor/lib/egl/libGLESv2_adreno.so`
  - `vendor/lib/libgsl.so`
  - `vendor/lib/libadreno_utils.so`
  - `vendor/lib/librs_adreno.so`
  - `lib/hw/gralloc.msm8909.so`
  - `lib/hw/hwcomposer.msm8909.so`
  - `lib/hw/memtrack.msm8909.so`
- **Sensors & Lights**:
  - `lib/hw/sensors.msm8909.so`
  - `lib/hw/lights.msm8909.so`
- **Modem & Radio (RIL)**:
  - `bin/qmuxd`
  - `bin/netmgrd`
  - `bin/rmt_storage`
  - `vendor/lib/libril-qc-qmi-1.so`
  - `vendor/lib/libril-qc-radioconfig.so`
  - `vendor/lib/libril-qcril-hook-oem.so`
  - `vendor/lib/libqmi*.so` (libqmi, libqmi_cci, libqmi_client_helper, libqmi_client_qmux, libqmi_common, libqmi_csi, libqmi_encdec, libqmiservices)
  - `vendor/lib/libdsutils.so`
  - `vendor/lib/libidl.so`

---

## How to Use in LineageOS / AOSP Tree

Clone this repository into your ROM build tree at `vendor/jio/f220b`:
```bash
git clone https://github.com/su60pi/jio_f220b_vendor_tree.git vendor/jio/f220b
```
It is automatically included by `device/jio/f220b/device.mk` via:
```makefile
$(call inherit-product-if-exists, vendor/jio/f220b/f220b-vendor.mk)
```
