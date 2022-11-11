# Translator
A straightforward program called Translator can identify selected text, which is then sent to the program to be translated into your native tongue. The unix system must have Ruby, Python, and a few executables installed.

### Content
- [1 Installation](#1-installation)
- [2 Usage](#2-usage)
- [3 Contributors](#3-contributors)

## 1 Installation
Because of the more difficult installation process, I don't wish to integrate this software with the ecosystem.

### 1.1 Clone
As a result, this repository needs to be cloned and placed in a special subdirectory.

*The order to carry out the specified action is as follows:*
```bash
cd ~/.local/lib &&
git clone https://github.com/filipvrba/translator-rb
```

### 1.2 Applications
This *Translator* application needs to be installed on a Unix system along with other necessary programs before we can use it. This is so that it may launch different apps using instructions. (Which are created using different coding languages.)

*Installing the following components is necessary:*
- **python3-pip**: *python* bundle ecosystem.
  - **transfv**: text translation tool for *cli* that makes use of external libraries and *Google Translate*.
- **xsel**: manipulates selected text on a *unix* system for additional operations.

Installing *python3-pip* will be the first step before using it to install the required package *transfv*. (Python will have all libraries installed.) The native Unix system program *xsel* will then be installed. The *Translator* application ought to function as expected after everything is installed, she believes.

*The bash script should appear as follows, so paste it into the terminal and execute it:*
```bash
sudo apt install python3-pip xsel && pip install transfv
```

### 1.3 Edit Script
Everything is set up, but new issues start to appear. It needs to be changed for easier rendering of the translated text in third-party applications. You can edit the Python code by following the steps given below. 

*Open the application code and make the following changes:*
```bash
code ~/.local/bin/translate
```

1. Find the following block of code [33..37]:
![Find block code](/public/translate_edit_01.png "block code")
2. In order to only display the translated text, modify the string in the *result* variable:
```python
    result = u"""
{text}
    """.strip().format(src=result.src, dest=result.dest, original=result.origin,
                       text=result.text, pronunciation=result.pronunciation)
    print(result)
```

### 1.4 Application Shortcuts
We construct a *Application Shortcut* where we press the keyboard combination for text translation in order to launch the program more quickly than through a command.

![Keyboard window](/public/keyboard_01.png "keyboard window")

```bash
$HOME/.local/lib/translator-rb/bin/trb
```

Everything has now been installed.

## 2 Usage

## 3 Contributors
- [Filip Vrba](https://github.com/filipvrba) - creator and maintainer
