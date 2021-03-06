# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file includes all definitions that apply only to maguro devices
#
# Anything that is generic to all tuna products should go in the tuna directory
#
# Everything in this directory will become public

DEVICE_PACKAGE_OVERLAYS := device/samsung/maguro/overlay

# These are the hardware-specific features
PRODUCT_COPY_FILES := \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

$(call inherit-product, device/samsung/tuna/device.mk)
$(call inherit-product-if-exists, vendor/samsung/maguro/device-vendor.mk)

# DEMENTED build.prop tweaks
PRODUCT_PROPERTY_OVERRIDES += \
        windowsmgr.max_events_per_sec=350 \
        ro.kernel.android.checkjni=0 \
        ro.media.enc.jpeg.quality=100 \
        ro.config.nocheckin=1 \
        ro.config.hw_quickpoweron=true \
        debug.performance.tuning=1 \
        persist.service.swiqi.enable=1 \
        video.accelerate.hw=1 \
        ro.ril.enable.3g.prefix=1 \
        ro.ril.hep=1 \
        ro.ril.hsxpa=3 \
        ro.ril.enable.dtm=1 \
        ro.ril.gprsclass=12 \
        ro.ril.hsdpa.category=8 \
        ro.ril.enable.a53=1 \
        ro.ril.hsupa.category=5 \
        persist.sys.purgeable_assets=1 \
        pm.sleep_mode=1 \
        ro.home_app_adj=1 \
        ro.ext4fs=1 \
        persist.sys.use_dithering=0 \
        ro.ril.disable.power.collapse=0 \
        dalvik.vm.heapstartsize=128m \
        dalvik.vm.heapgrowthlimit=320m \
        dalvik.vm.heapsize=512m \
        dalvik.vm.execution-mode=int:jit \
        dalvik.vm.heaputilization=0.05 \
        dalvik.vm.heapidealfree=8388608 \
        dalvik.vm.heapconcurrentstart=2097152 \
        dalvik.vm.verify-bytecode=false \
        dalvik.vm.dexopt-data-only=1 \
        ro.dalvik.vm.checkjni=0 \
        dalvik.vm.dexopt-flags=v=n,o=v \
        debug.composition.type=gpu \
        ro.max.fling_velocity=15000 \
        ro.min.fling_velocity=8000 \
        ro.config.hw_fast_dormancy=1 \
        net.dns1=8.8.4.4 \
        net.dns2=8.8.8.8 \
        ro.semc.sound_effects_enabled=true \
        ro.semc.xloud.supported=true \
        htc.audio.alc.enable=1 \
        htc.audio.swalt.enable=1 \
        htc.audio.swalt.mingain=14512 \
        persist.service.xloud.enable=1 \
        persist.service.enhance.enable=1 \
        ro.semc.clearaudio.supported=true \
        persist.service.clearaudio.enable=1 \
        ro.sony.walkman.logger=1 \
        ro.somc.clearphase.supported=true \
        persist.service.clearphase.enable=1 
