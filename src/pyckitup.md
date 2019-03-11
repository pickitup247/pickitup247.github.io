# pyckitup

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/github-fork-ribbon-css/0.2.2/gh-fork-ribbon.min.css" />
<a class="github-fork-ribbon right-bottom fixed" href="http://github.com/pickitup247/pyckitup" data-ribbon="Fork me on GitHub" title="Fork me on GitHub">Fork me on GitHub</a>

![logo](/pyckitup/logos/facebook_cover_photo_2.png)

Python game engine for the web

[Github](https://github.com/pickitup247/pickitup)

## About

* 2D game engine for Python

* written in [Rust](https://www.rust-lang.org/)

* compiles to WebAssembly

* renders to WebGL

* single binary distribution

* no compilation

## Quickstart

1. Download pyckitup binary.

> Currently only linux is supported, OSX and windows should work too but they are untested.

* Linux: [download](https://github.com/pickitup247/pyckitup/releases/tag/0.1)

* Windows: [build instructions](./pyckitup/contribute.md)

* OS X: [build instructions](./pyckitup/contribute.md)

2. init

```bash
pyckitup init hello
cd hello
pyckitup
```

3. Iterate over your game

4. Once you are ready to publish, you can deploy to web with

```bash
pyckitup build
cd build
python3 server.py
```
