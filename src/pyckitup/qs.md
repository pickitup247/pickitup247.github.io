<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/github-fork-ribbon-css/0.2.2/gh-fork-ribbon.min.css" />
<a class="github-fork-ribbon right-bottom fixed" href="http://github.com/pickitup247/pyckitup" data-ribbon="Fork me on GitHub" title="Fork me on GitHub">Fork me on GitHub</a>

## `qs` module

`qs` module is the namespace for quicksilver library functions.

* draw functions(shapes, sprite and sprite animation)

* sounds

* assets initializers

* functions to get mouse position etc.

> Note:
> The name comes from the underlying game engine quicksilver.

### Types:

* Point: A cartesian point represented as a list `[x, y]`.

* Color: Linear RGBA type. It is a list of four floats with range [0., 1.]. Example: `BLUE = [0, 0, 1, 1]`

* Transform: Transform matrix. a list of lists that represents a 3x3 matrix whose last axis with homogeneous coordinate.

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


All draw calls have these common optional named arguments:

```python
qs.rect(.., color: Color, transform: Transform, z: int)
```



> Note:
> The default values are used when the optional arguments are not specified.
> ```
> Color: Red
> Transform: Identity
> z: 0
> ```

### Shapes

#### Rectangle

```python
qs.rect([Point, [w, h]], ..) # w is the width, h the height
```

Example:

    # Draw a blue rectangle with a top-left corner at
    # (100, 100) and a width and height of 32
    qs.rect([[100,100], [32,32]], color=BLUE)

#### Circle

```python
qs.circ([Point], radius, ..) # radius is required
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

Sprite draws an image to canvas. Its name must be unique. The image must be initialized in the init lifecycle function.

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

These functions can be called in two ways:

1. rect=[Point, Point]

Use this to draw your sprite in the box boudned by the rect

2. p0=Point

Align the top left corner of the sprite with p0 and leave width and height unchanged.

#### Sound
qs.sound:


### initializers
* qs.init_sprites

    args: [(name, path)]

qs.init_anims

    args: [(name, path, frame width, frame height, duration(in s))]

qs.init_sounds

    args: [(name, path)]

```python
qs.init_sprites([
    ["crab", "crab.png"], # name, path
])
qs.init_anims([
    ["crab-left", "crab-left.png", 36, 27, 1.], # frame width, frame height, duration(in s)
    ["crab-up", "crab-up.png", 36, 27, 1.]
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

# Example:

```
# Remove any artifacts from the previous frame
qs.clear(WHITE)
# Draw a blue rectangle with a top-left corner at (100, 100) and a width and height of 32
qs.rect([[100,100], [32,32]], color=BLUE)
# Draw a blue rectangle, rotated by 45 degrees, with a z-height of 10
qs.rect([[400, 300], [32, 32]], color=BLUE, transform=rotate(45), z=10)
# Draw a green circle with its center at (400, 300) and a radius of 100
qs.circ( [400, 300], 100., color=GREEN)
# Draw a red line with thickness of 2 pixels and z-height of 5
qs.line([[50, 80], [600, 450]], thickness=2., color=RED, z=5)
# Draw a red triangle rotated by 45 degrees, and scaled down to half
qs.triangle([[500, 50], [450, 100], [650, 150]], color=RED, transform=matmul(rotate(45), scale(0.5, 0.5)), z=0)
```