<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/github-fork-ribbon-css/0.2.2/gh-fork-ribbon.min.css" />
<a class="github-fork-ribbon right-bottom fixed" href="http://github.com/pickitup247/pyckitup" data-ribbon="Fork me on GitHub" title="Fork me on GitHub">Fork me on GitHub</a>

## Assets

All assets must be placed in the `static/` folder. Assets may include sprites, sprite animations and sounds. Assets must be declared in the init lifecycle function before use. asset loading is asynchronous and pyckitup will panic if not all assets are loaded.

The asset initializer functions are detailed in the [qs module](/pyckitup/qs.md#initializers) section.

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