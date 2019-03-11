<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/github-fork-ribbon-css/0.2.2/gh-fork-ribbon.min.css" />
<a class="github-fork-ribbon right-bottom fixed" href="http://github.com/pickitup247/pyckitup" data-ribbon="Fork me on GitHub" title="Fork me on GitHub">Fork me on GitHub</a>

## Assets

All assets should be placed in the static folder. There is currently no way to customize the path. Assets include sprites, sprite animations and sounds. Assets must be declared in the init lifecycle function before use. pyckitup will asynchronously load and panic when any asset is not found.

The asset initializer functions are detailed below.

## Directory Structure

```
/game
|-run.py
|-module.py
|-/static        <- place your assets here
| |-sprite.png
| |-anim.png
| |-sound.wav
```