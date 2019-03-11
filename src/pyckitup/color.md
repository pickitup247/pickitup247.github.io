<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/github-fork-ribbon-css/0.2.2/gh-fork-ribbon.min.css" />
<a class="github-fork-ribbon right-bottom fixed" href="http://github.com/pickitup247/pyckitup" data-ribbon="Fork me on GitHub" title="Fork me on GitHub">Fork me on GitHub</a>

# Example: Color

<iframe src="/color" width="800" height="600"></iframe>

Source code:


```python
import qs
from common import *

def init():
    qs.init_anims([
        # name, path, nframes, duration(s)
        ["crab-up", "crab-up.png", 2, 1.],
    ])
    return {
        "p0": [1., 1.],
        "p1": [100., 100.],
        "color": [0,0,0,1],
    }

def update(state):
    state["p0"][0] += 0.3
    state["p0"][1] += 0.3

    state["color"][0] += 0.001
    state["color"][1] += 0.002
    state["color"][2] += 0.003
    state["color"][0] %= 1
    state["color"][1] %= 1
    state["color"][2] %= 1


def draw(state):
    qs.clear(state["color"])
    qs.anim("crab-up", rect=[state["p0"], state["p1"]])

def event(state, event):
    if event["event"] == "mouse_moved":
        state["p0"][0] = event["x"]
        state["p0"][1] = event["y"]
```