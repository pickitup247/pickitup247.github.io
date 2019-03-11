<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/github-fork-ribbon-css/0.2.2/gh-fork-ribbon.min.css" />
<a class="github-fork-ribbon right-bottom fixed" href="http://github.com/pickitup247/pyckitup" data-ribbon="Fork me on GitHub" title="Fork me on GitHub">Fork me on GitHub</a>

## API

### Lifecycle functions

The lifecycle of a pyckitup game consists of these functions:

1. `def init() -> State`

Initializes assets, returns a state object which can be an integer, a list, a dictionary or practically any Python object.

2. `def onload(State) -> None`

This function is run exactly once after window creation. Can be used for setting frame rate, getting window size, etc..

3. `def update(State) -> None`

This function is guaranteeed to run once per frame.

4. `def draw(State) -> None`

Draw your game visuals here. In contrast to update function above, there is no once-per-frame guarantee.

5. `def event(State, Event) -> None`

Event is a dictionary containing the event type and its associated data.
