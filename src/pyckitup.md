# pyckitup

## Python game engine for the Web.

<script async defer src="https://buttons.github.io/buttons.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/github-fork-ribbon-css/0.2.2/gh-fork-ribbon.min.css" />
<a class="github-fork-ribbon right-bottom fixed" href="http://github.com/pickitup247/pyckitup" data-ribbon="Fork me on GitHub" title="Fork me on GitHub">Fork me on GitHub</a>

![logo](/pyckitup/logos/facebook_cover_photo_2.png)


<a class="github-button" href="https://github.com/pickitup247/pyckitup" data-size="large" data-show-count="true" aria-label="Star pickitup247/pyckitup on GitHub">Star</a>

## About

Hi there! pyckitup is a Python game engine you can use to make 2D games. It is free, open source and works on Web, Linux, OS X and Windows.


## Getting Started


1. Download pyckitup binary.

* Linux: [download](https://github.com/pickitup247/pyckitup/releases/tag/0.1)

* Windows: [build instructions](./pyckitup/contribute.md)

* OS X: [build instructions](./pyckitup/contribute.md)

2. Initialize game folder

The folder contains the clock example game.

```bash
pyckitup init hello
cd hello
pyckitup
```

3. Iterate over your game

4. Once ready, deploy to web with

```bash
pyckitup build
```

This creates a `build/` directory which contains everything you need to deploy your awesome game to the web. Simply copy the folder to where you want it served.

## How it works

pyckitup is a thin layer glueing RustPython interpreter to quicksilver game engine. It compiles to a single binary on different systems. Native binaries(as opposed to wasm) also come with wasm files.

When you load a pyckitup game in browser, it loads a single 5MB wasm blob and interprets Python code stored in localStorage. As a result there is a 10MB code size limit.
