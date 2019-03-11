<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/github-fork-ribbon-css/0.2.2/gh-fork-ribbon.min.css" />
<a class="github-fork-ribbon right-bottom fixed" href="http://github.com/pickitup247/pyckitup" data-ribbon="Fork me on GitHub" title="Fork me on GitHub">Fork me on GitHub</a>

## `qs` module

`qs` module is the namespace for quicksilver library functions:

* draw(shape, sprite and sprite animation)

* play sound

* initialize asset

* get mouse position, keyboard state, etc..

> The name `qs` comes from the underlying game framework `quicksilver`.

### pyckitup Types

The types in pyckitup are simple Python objects.

* Point: A cartesian point represented as a list `[x, y]`.

* Color: Linear RGBA type. It is a list of four floats with range [0., 1.]. Example: `BLUE = [0, 0, 1, 1]`

* Transform: 3x3 Transformation matrix. a list of lists that represents a 3x3 matrix with the last being homogeneous coordinate.

```python
def rotate(deg):
    theta = deg * 3.14 / 180.
    c = math.cos(theta)
    s = math.sin(theta)
    return [
        [c,-s, 0],
        [s, c, 0],
        [0, 0, 1]
    ]

def scale(x, y):
    return [
        [x, 0, 0],
        [0, y, 0],
        [0, 0, 1]
    ]

def matmul(X, Y):
    return [[sum(a*b for a,b in zip(X_row,Y_col)) for Y_col in zip(*Y)] for X_row in X]
```

### Draw

All draw calls have these common optional named arguments:

```python
qs.rect(.., color: Color, transform: Transform, z: int)
```
> These are the default values for the optional arguments:
> ```
> Color: Red
> Transform: Identity
> z: 0
> ```

### Shapes

#### Rectangle

```python
qs.rect([Point, [w, h]], ..)
```

Example:

    # Draw a blue rectangle with a top-left corner at
    # (100, 100) and a width and height of 32
    qs.rect([[100,100], [32,32]], color=BLUE)

#### Circle

```python
qs.circ([Point], radius: float, ..) # radius is required
```

Example:

    # Draw a green circle with its center at (400, 300) and a radius of 100
    qs.circ( [400, 300], 100., color=GREEN)

#### Triangle

```python
qs.triangle([Point, Point, Point], ..)
```

Example:

    # Draw a red triangle rotated by 45 degrees, and scaled down to half
    qs.triangle([[500, 50], [450, 100], [650, 150]],
        color=RED, transform=matmul(rotate(45), scale(0.5, 0.5)), z=0)

#### Line

```python
qs.line([Point, Point], thickness: int, ..) # thickness is an optional named argument with default=1
```

Example:

    # Draw a red line with thickness of 2 pixels and z-height of 5
    qs.line([[50, 80], [600, 450]], thickness=2., color=RED, z=5)

### Assets

Sprites are uniquely identified by name and must be initialized in the `init` lifecycle function.

Image drawing functions can be called in two ways:

1. `.., rect=[Point, Point], ..`

Use this to draw your sprite in the specified bounding rectangle.

2. `.., p0=Point, ..`

Align the top left corner of the sprite with p0 and leave width and height unchanged.

#### Sprite

```python
qs.sprite(sprite_name: str, rect=[Point, Point], ..)
# or
qs.sprite(sprite_name: str, p0=Point, ..)
```

#### Animation

```python
qs.anim(animation_name: str, rect=[Point, Point], ..)
# or
qs.anim(animation_name: str, p0=Point, ..)
```


#### Sound

Sound is also unique identified by name. This function plays the sound:

    qs.sound(name: str)


### Initializers

#### Sprites

    args: [(name, path)]

#### Sprites Animations

    args: [(name, path, number of frames, duration(in s))]

#### Sounds

    args: [(name, path)]

Example:

```python
qs.init_sprites([
    ["crab", "crab.png"], # name, path
])
qs.init_anims([
    ["crab-left", "crab-left.png", 2, 1.], # number of frames, duration(in s)
])
qs.init_sounds([
    ["click", "click.wav"]
])
```

### misc

```
qs.mouse_pos()
qs.keyboard()
qs.keyboard_bool()
qs.mouse_wheel_delta()
qs.set_view()
qs.set_update_rate()
qs.update_rate()
qs.clear()
```
