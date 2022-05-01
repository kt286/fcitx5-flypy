# fcitx5-flypy

## Introduction

  fcitx5-flypy provides flypy table for fcitx5.

## Requirements

  You need to install fcitx5-table fcitx5-lua and libime first.

## Build

```bash
sudo apt-get install build-essential cmake-extras extra-cmake-modules gettext appstream libecm-dev libfcitx5core-dev libboost-dev libimecore-dev libimetable-dev
make build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=/usr
make -j4
sudo make install
```
