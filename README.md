
# Super Mario Galaxy 1 [![Discord Badge]][Discord]

*A* ***WIP*** *decompilation of the* ***US*** *version.*

<br>

---

## DOL

*The* ***DOL*** *built with this repository.*

**File** : `main.dol` <br>
**SHA1** : `9A71008AE1EE9010E267FA67D1F0B0D4F0E895DD`

---


<br>

## Building

### Requirements

- **[DevKitPro]**

<br>

### Instructions

1. Obtain a clean **DOL** of `Super Mario Galaxy 1` .

2. Place it in the root folder with `baserom.dol` as its name.

3. Obtain <kbd>mwcceppc.exe</kbd> & <kbd>mwldeppc.exe</kbd> from **CodeWarrior**.

    > I can supply this if you **DM** me `shibboleet#1407`

    *They are also available at* ***[NXP]*** *.*

    *Using the installer, the files can be found at* <br>
    *`/PowerPC_EABI_Tools/Command_Line_Tools/` .*

3. Obtain <kbd>powerpc-eabi-as.exe</kbd> & <kbd>powerpc-eabi-objcopy.exe</kbd> from **[DevKitPro]** .

4. Copy them into the `/tools/` directory.

5. Run the **Make** command :

    ```sh
    make
    ```

<br>

---

<br>

## Contributions

*`Contributions` / `Pull Requests` are welcome !*


<!----------------------------------------------------------------------------->

[DevKitPro]: https://devkitpro.org/wiki/Getting_Started
[NXP]: https://www.nxp.com/lgfiles/devsuites/PowerPC/CW55xx_v2_10_SE.exe

[Discord Badge]: https://img.shields.io/badge/Discord-7289DA?style=for-the-badge&logo=discord&logoColor=white
[Discord]: https://discord.gg/hKx3FJJgrV
