#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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
#

set -e

DEVICE=mido
VENDOR=xiaomi
DEVICE_COMMON=msm8953-common

INITIAL_COPYRIGHT_YEAR=2017

# Load extract_utils and do some sanity checks
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$MY_DIR" ]]; then MY_DIR="$PWD"; fi

FMO_ROOT="$MY_DIR"/../../..

MIDO_BLOB_ROOT="$FMO_ROOT"/vendor/"$VENDOR"/"$DEVICE"/proprietary

patchelf --replace-needed android.hardware.gnss@1.0.so android.hardware.gnss@1.0-v27.so $MIDO_BLOB_ROOT/vendor/lib64/vendor.qti.gnss@1.0_vendor.so
patchelf --replace-needed android.hardware.gnss@1.0.so android.hardware.gnss@1.0-v27.so $MIDO_BLOB_ROOT/lib64/vendor.qti.gnss@1.0.so

