<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/github-fork-ribbon-css/0.2.2/gh-fork-ribbon.min.css" />
<a class="github-fork-ribbon right-bottom fixed" href="http://github.com/pickitup247/pyckitup" data-ribbon="Fork me on GitHub" title="Fork me on GitHub">Fork me on GitHub</a>

# Contributing

pyckitup mainly uses [RustPython](https://rustpython.github.io/website/rustpython_vm/index.html) and [quicksilver](https://github.com/ryanisaacg/quicksilver) to do all the heavy lifting. Most of pyckitup is glue between these two crates.

Quicksilver supports both native and web backends so the idea is to include a python interpreter and glue the game loop to Python functions.

```bash
cargo install cargo-web --force
# git clone https://github.com/rickyhan/RustPython
git clone git@github.com:pickitup247/pyckitup.git
cd pyckitup
cargo web deploy --release
cargo build --release
```
