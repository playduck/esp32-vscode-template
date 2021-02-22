# esp32-vscode-template

Template Repository for
[ESP-IDF v4.3](https://github.com/espressif/esp-idf).

Based on `C` using `CMake` and `idf.py` (`Makefile` is also possible)

## File Structure

```bash
./
├── CMakeLists.txt
├── Makefile
├── sdkconfig
├── README.md
├── main
│   ├── CMakeLists.txt
│   ├── component.mk
│   ├── include
│   │   └── definitions.h
│   └── main.c
├── tools
│    └── rename_project.sh
└── .vscode
    ├── c_cpp_properties.json
    └── settings.json
```

## Build

using `idf.py menuconfig` and `idf.py build`

Flash with `idf.py -p {PORT} flash monitor`

## Tools

`rename_project.sh`

Bash utility to rename this project.
Arguments: New project name
