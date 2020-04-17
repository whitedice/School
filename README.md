# Jarvis (RaspberryPi Code):

Code for the Raspberrypy for the Qi-Tech Industries project "Jarvis"

## Getting Started

In the following text you will get the parameters and commands listed and explained for all available programs. In addition, here are the current versions and much more information

### Inhalt:

   * [Jarvis (RaspberryPi Code):](#jarvis-raspberrypi-code)
      * [Getting Started](#getting-started)
         * [How to install:](#how-to-install)
      * [How to use?](#how-to-use)
         * [How to use runtime.py](#1-how-to-use-runtimepy)
            * [available Parameters](#available-parameters)
         * [How to use object_size.py](#2-how-to-use-object_sizepy)
            * [available Parameters](#available-parameters)
         * [How to use exporter.py](#3-how-to-use-exporterpy)
            * [available Parameters](#available-parameters)
         * [How to use camera.py](#4-how-to-use-camerapy)
            * [available Parameters](#available-parameters)
         * [How to use settings.py](#5-how-to-use-settingspy)
            * [available Parameters](#available-parameters-)
               - [Important Parameters](#1-important-parameters)
               - [General Parameters](#2-general-parameters)
               - [exporter](#3-exporter)
               - [camera](#4-camera)
               - [object_size](#5-object_size)
               - [runtime](#6-runtime)
      * [Important Sites](#important-sites)



### How to install:

All full versions can be found on the GitHub [version page](https://github.com/qi-techInc/Jarvis-RaspberryPi/releases).

They are divided into ...

```
New Versions: z.B. 2.0 / 1.0 / ...
```
#### All big Updates:
- ```v.0.x``` -> erste richtige Versionen (mehr tests auf dem pc mit einem einfachen Bild aus paint)
- ```v.1.x``` -> erste Versionen auf dem PI (Bilderkennung noch nicht sehr gut aber läuft theoretisch)
- ```v.2.x``` -> optimierte Versionen auf dem PI (deutlich bessere Bilderkennung die das 1. mal perfekt live funktionieren)

```
Updates: z.B. 2.1 / 2.3 / ...
```

```
Fixes in the current Version: z.B. 2.1.1 / 2.2.3 / ...
```


I would recommend using the **"latest release"** version

## How to use

Jarvis is divided into 5 subprograms:
- run.py

- measure.py

- exp.py

- cam.py

- options.py

------------

***You have several options for all parameters, such as "y","j","ja","an",...***

------------
### 1. How to use run.py


```
💻 PC: run.py
👾 PI: python3 run.py
```

#### available Parameters

| Parameter  | Description                    |  Possible                    |
| ------------ | ---------------- | ------------------------------ |
| `-dev`      | starts the dev-mode | true, false |
| `-pi`      | Executes the code for the Pi (takes a picture and measures it) | s (normal), r (reference) |
| `-pc`      | Executes the code for the PC (measures the input picture) | s (normal), r (reference) |
| `-ex`      | Runs the exp.py program | s (normal) |
| `-l`      | defines how often you want to call your program | number above 0 |

#### important Commands

```
run.py -pi s -dev true
```
> normaler Durchlauf auf dem PI


```
run.py -pc s -dev true
```
> normaler Durchlauf auf dem PC


#### common issues / other information

- run.py uses the settings of the subprogramms
- for Parameters use ' . ' instead of ' . 'and instead of ' _ ' please use ' - '


------------

### 2. How to use measure.py


```
💻 PC: measure.py
👾 PI: python3 measure.py
```


#### available Parameters

| Parameter  | Description                    |  Possible                    |
| ------------ | ---------------- | ------------------------------ |
| `-dev`      | starts the dev-mode | true, false |
| `-w`      | width of the left-most object in the image (in mm) | number above 0 |
| `-i`      | path and name to the input image | any existing picture |
| `-r`      | input picture = reference object? | true, false |
| `-s`      | how to visualize the result? | image, console, none |
| `-intimg`      | intensity of imagefinder | (full) number above 0 |

#### important Commands

```
measure.py -r true -s cons
```
> Referenzobjekt erstellen

#### common issues / other information
- inputname should have an ending (for example .png) and should inclule the path (look at defaults for correct example)
-if you use a decimal number in intimg, errors can occur
------------

### 3. How to use exp.py


```
💻 PC: exp.py
👾 PI: python3 exp.py
```


#### available Parameters

| Parameter  | Description                    |  Possible                    |
| ------------ | ---------------- | ------------------------------ |
| `-i`      | specify the name and path ot the input file | any existing json file |
| `-o`      | specify the name of the output file | any name |
| `-t`      | which type do you want to export it? | excel, csv  |


#### common issues / other information

- -t doesn't need an ending
- -i needs an ending (.json)

------------


### 4. How to use cam.py


```
💻 PC: won't work :(
👾 PI: python3 cam.py
```

#### available Parameters

| Parameter  | Description                    |  Possible                    |
| ------------ | ---------------- | ------------------------------ |
| `-dev`      | starts the dev-mode | true, false |
| `-p`      | do you want to have a preview before it takes the picture? | any number from 0 (0=no preview) |
| `-c`      | control the strength of the "contrast"-value | -100-100  |
| `-s`      | control the strength of the "sharpness"-value | 0-100  |
| `-n`      |  specify the name of the output file | any name (equal = the same that Measure.py uses) |


#### common issues / other information

- The camara preview does not work with a remote PC connection. The preview is still displayed on a connected screen, but the PC is recognized as the 2nd screen and the preview is only displayed on the first.

------------

### 5. How to use options.py


```
💻 PC: options.py
👾 PI: python3 options.py
```

#### available Parameters

| Parameter  | Description                    |  Possible                    |
| ------------ | ---------------- | ------------------------------ |
| `-dev`      | starts the dev-mode | true, false |
| `-help`      | shows help for the commands | *unimportant* |
| `-r`      | reset the settings to default | y/true,n/false |
| `-c`      | clears the measurements | ref, only |

#### important Commands

```
options.py -r y
```
> setzt die Einstellungen zurück

```
options.py -c ref
```
> löscht alle Messungen und das Referenzobjekt

```
options.py -c only
```
> löscht nur alle Messungen


#### common issues / other information

- to change the advanced options please ask a developer or use the json file itself!
- Parameter -s is not available in the current version!

------------
## All Commands:

| Parameter  | Description                    |  Possible                    |
| ------------ | ---------------- | ------------------------------ |
| `-dev`      | starts the dev-mode | true, false |
| `-pi`      | Executes the code for the Pi (takes a picture and measures it) | s (normal), r (reference) |
| `-pc`      | Executes the code for the PC (measures the input picture) | s (normal), r (reference) |
| `-ex`      | Runs the exp.py program | s (normal) |
| `-l`      | defines how often you want to call your program | number above 0 |
> run.py


| Parameter  | Description                    |  Possible                    |
| ------------ | ---------------- | ------------------------------ |
| `-dev`      | starts the dev-mode | true, false |
| `-w`      | width of the left-most object in the image (in mm) | number above 0 |
| `-i`      | path and name to the input image | any existing picture |
| `-r`      | input picture = reference object? | true, false |
| `-s`      | how to visualize the result? | image, console, none |
| `-intimg`      | intensity of imagefinder | (full) number above 0 |
> measure.py



| Parameter  | Description                    |  Possible                    |
| ------------ | ---------------- | ------------------------------ |
| `-i`      | specify the name and path ot the input file | any existing json file |
| `-o`      | specify the name of the output file | any name |
| `-t`      | which type do you want to export it? | excel, csv  |
> exp.py



| Parameter  | Description                    |  Possible                    |
| ------------ | ---------------- | ------------------------------ |
| `-dev`      | starts the dev-mode | true, false |
| `-p`      | do you want to have a preview before it takes the picture? | any number from 0 (0=no preview) |
| `-c`      | control the strength of the "contrast"-value | -100-100  |
| `-s`      | control the strength of the "sharpness"-value | 0-100  |
| `-n`      |  specify the name of the output file | any name (equal = the same that Measure.py uses) |
> cam.py




| Parameter  | Description                    |  Possible                    |
| ------------ | ---------------- | ------------------------------ |
| `-dev`      | starts the dev-mode | true, false |
| `-help`      | shows help for the commands | *unimportant* |
| `-r`      | reset the settings to default | y/true,n/false |
| `-c`      | clears the measurements | ref, only |
> options.py



## All Defaults:
| Parameter  | Description                    |  Default              |     
| ------------ | ---------------- | ------------------------------ |
| `-dev`      | starts the dev-mode | | (deactivated) *from settings* |
| `-pi`      | Executes the code for the Pi (takes a picture and measures it) | *no default* |
| `-pc`      | Executes the code for the PC (measures the input picture) | *no default* |
| `-ex`      | Runs the exp.py program  | *no default* |
| `-l`      | defines how often you want to call your program | 0 -> *from settings* |
> run.py



| Parameter  | Description                    |   Default                    |
| ------------ | ---------------- | ------------------------------ |
| `-dev`      | starts the dev-mode |  deactivated -> *from settings* |
| `-w`      | width of the left-most object in the image (in mm) | ref-mode: 1,75mm, normal-mode: auto |
| `-i`      | path and name to the input image | rsc/img/input.png -> *from settings* |
| `-r`      | input picture = reference object? |  false -> *from settings* |
| `-s`      | how to visualize the result? | console -> *from settings* |
| `-intimg`      | intensity of imagefinder | 2 -> *from settings* |
> measure.py



| Parameter  | Description                    |  Default         |
| ------------ | ---------------- | ------------------------------ |
| `-i`      | specify the name and path ot the input file | rsc/save/data.json-> *from settings* |
| `-o`      | specify the name of the output file | output -> *from settings* |
| `-t`      | which type do you want to export it? | excel-> *from settings* |
> exp.py



| Parameter  | Description                    |  Default         |
| ------------ | ---------------- | ------------------------------ |
| `-dev`      | starts the dev-mode | deactivated -> *from settings* |
| `-p`      | do you want to have a preview before it takes the picture? | 0 -> *from settings* |
| `-c`      | control the strength of the "contrast"-value | -20 -> *from settings*  |
| `-s`      | control the strength of the "sharpness"-value | 100 -> *from settings*  |
| `-n`      |  specify the name of the output file | equal -> *from settings*  |
> cam.py



| Parameter  | Description                    |  Default         |
| ------------ | ---------------- | ------------------------------ |
| `-dev`    | starts the dev-mode |  deactivated -> *from settings* |
| `-help`   | shows help for the commands | *no default* |
| `-r`      | reset the settings to default | *no default* |
| `-c`      | clears the measurements | *no default* |
> options.py


------------
## Important Sites

* [Versions](https://github.com/qi-techInc/Jarvis-RaspberryPi/releases) - download all updates since version 0.5-alpha
* [Patchnotes](https://docs.google.com/document/d/1-vY56eidi2Hoe1O0Z3sWF6mtqq4O5DiKbMqyiyEAhxM) - lists all updates from version 0.1 to v.1.5-release (the new Patchnotes will be shown [here](https://github.com/qi-techInc/Jarvis-RaspberryPi/releases))
