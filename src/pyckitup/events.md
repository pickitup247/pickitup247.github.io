<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/github-fork-ribbon-css/0.2.2/gh-fork-ribbon.min.css" />
<a class="github-fork-ribbon right-bottom fixed" href="http://github.com/pickitup247/pyckitup" data-ribbon="Fork me on GitHub" title="Fork me on GitHub">Fork me on GitHub</a>

## Events

Event objects are dispatched in the `event` lifecycle function:

```python
def event(state, event):
    print(event)
```

* Closed

```python
{
    "event": "closed"
}
```
* Focused

```python
{
    "event": "focused"
}
```
* Unfocused

```python
{
    "event": "unfocused"
}
```

* Key

```python
{
    "event": "key",
    "key": "A",
    "state": "Pressed"
}
```

* Typed

```python
{
    "event": "typed",
    "char": "A"
}
```

* MouseMoved

```python
{
    "event": "mouse_moved",
    "x": 0,
    "y": 0
}
```

* MouseEntered

```python
{
    "event": "mouse_entered"
}
```

* MouseExited

```python
{
    "event": "mouse_exited"
}
```

* MouseWheel

```python
{
    "event": "mouse_wheel",
    "x": 0,
    "y": 0
}
```

* MouseButton

```python
{
    "event": "mouse_button",
    "button": "Left",
    "state": "Pressed"
}
```

### Buttons
```
Key1
Key2
Key3
Key4
Key5
Key6
Key7
Key8
Key9
Key0
A
B
C
D
E
F
G
H
I
J
K
L
M
N
O
P
Q
R
S
T
U
V
W
X
Y
Z
Escape
F1
F2
F3
F4
F5
F6
F7
F8
F9
F10
F11
F12
F13
F14
F15
F16
F17
F18
F19
F20
F21
F22
F23
F24
Snapshot
Scroll
Pause
Insert
Home
Delete
End
PageDown
PageUp
Left
Up
Right
Down
Back
Return
Space
Compose
Caret
Numlock
Numpad0
Numpad1
Numpad2
Numpad3
Numpad4
Numpad5
Numpad6
Numpad7
Numpad8
Numpad9
AbntC1
AbntC2
Add
Apostrophe
Apps
At
Ax
Backslash
Calculator
Capital
Colon
Comma
Convert
Decimal
Divide
Equals
Grave
Kana
Kanji
LAlt
LBracket
LControl
LShift
LWin
Mail
MediaSelect
MediaStop
Minus
Multiply
Mute
MyComputer
NavigateForward
NavigateBackward
NextTrack
NoConvert
NumpadComma
NumpadEnter
NumpadEquals
OEM102
Period
PlayPause
Power
PrevTrack
RAlt
RBracket
RControl
RShift
RWin
Semicolon
Slash
Sleep
Stop
Subtract
Sysrq
Tab
Underline
Unlabeled
VolumeDown
VolumeUp
Wake
WebBack
WebFavorites
WebForward
WebHome
WebRefresh
WebSearch
WebStop
Yen
```


### ButtonState

* Pressed

The button was activated this frame

* Held

The button is active but was not activated this frame

* Released

The button was released this frame

* NotPressed

The button is not active but was not released this frame
