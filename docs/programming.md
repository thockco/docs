---
sidebar_position: 3
---

# Programming

Conundrum uses QMK-based firmware, adapted to fit electro-capacitive sensing. Code can be found on [GitHub](https://github.com/thockco/qmk)

## Prerequisites

To simplify the build process the recommended build method is to use Docker. Before proceeding please make sure you have [Docker](https://www.docker.com/) installed.

## Steps

### Build firmware
1. Clone firmware code:
```bash
git clone https://github.com/thockco/qmk
```
2. Switch to the cloned directory and build firmware inside the Docker image.

```bash
./build-conundrum.sh
```
:::note
Depending on how you installed Docker you running the above command may require elevated permissions (sudo).
:::
3. You should now have the firmware file (`thock_conundrum_default.uf2`) ready to be uploaded to the device.

### Program the keyboard 

1. Enter bootloader mode. By default this is done by pressing `Lower` + `Raise` + `Bksp`.
```
,-----------------------------------------------------------------------------------.
| Tab  |   Q  |   W  |   E  |   R  |   T  |   Y  |   U  |   I  |   O  |   P  | Bksp |
|------+------+------+------+------+-------------+------+------+------+------+------|
| Esc  |   A  |   S  |   D  |   F  |   G  |   H  |   J  |   K  |   L  |   ;  |  "   |
|------+------+------+------+------+------|------+------+------+------+------+------|
| Shift|   Z  |   X  |   C  |   V  |   B  |   N  |   M  |   ,  |   .  |   /  |Enter |
|------+------+------+------+------+------+------+------+------+------+------+------|
|Colemk| Ctrl | Alt  | GUI  |Lower |    Space    |Raise | Left | Down |  Up  |Right |
`-----------------------------------------------------------------------------------'
```
2. Once the keyboard enters bootloader mode you should see a new volume labeled `CONUNDRUM`.
3. Copy `./thock_conundrum_default.uf2` to the bootloader volume.

:::danger
Do not unplug the keyboard while the bootloader is programming the keyboard.
:::
4. Once the bootloader finishes writing the firmware it will exit bootloader mode.
5. Done!
