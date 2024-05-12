/*
 * Copyright (C) 2024 XperiaLabs Project
 * Copyright (C) 2023 Paranoid Android
 * Copyright (C) 2023 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <android-base/logging.h>
#include <android-base/properties.h>
#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>
#include <sys/sysinfo.h>

void property_override(const char* name, const char* value) {
    size_t valuelen = strlen(value);

    prop_info* pi = (prop_info*) __system_property_find(name);
    if (pi != nullptr) {
        __system_property_update(pi, value, valuelen);
    } else {
        __system_property_add(name, strlen(name), value, valuelen);
    }
}

void vendor_load_properties() {
    property_override("ro.boot.hardware.sku", "pdx215");
    property_override("ro.rising.chipset", "Qualcomm® Snapdragon® 888");
    property_override("ro.rising.maintainer", "");
}