<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/github-fork-ribbon-css/0.2.2/gh-fork-ribbon.min.css" />
<a class="github-fork-ribbon right-bottom fixed" href="http://github.com/pickitup247/pyckitup" data-ribbon="Fork me on GitHub" title="Fork me on GitHub">Fork me on GitHub</a>

# Contributing

pyckitup mainly uses [RustPython](https://rustpython.github.io/website/rustpython_vm/index.html) and [quicksilver](https://github.com/ryanisaacg/quicksilver) to do all the heavy lifting. Most of pyckitup is glue between these two crates.

Quicksilver supports both native and web backends so the idea is to include a python interpreter and glue the game loop to Python functions.

To compile it for development, you will need to clone my fork of cargo-web(which contains a hacky bug fix).

```
cargo install --git https://github.com/rickyhan/cargo-web cargo-web --force
```

Next, clone my fork of RustPython(which contains some workarounds for loading python files from localStorage).

```
git clone https://github.com/rickyhan/RustPython
```

Clone pyckitup.

```
git clone git@github.com:pickitup247/pyckitup.git
```

Compile for wasm which will be included in the native binary.

```
cargo web deploy --release
```

Finally, compile native binary which includes the wasm binary for deployment.

```
cargo build --release
```
