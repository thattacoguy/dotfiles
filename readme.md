# dotfiles 
> taco's super cool linux configuration 😎😎😎

[![forthebadge](https://forthebadge.com/images/badges/60-percent-of-the-time-works-every-time.svg)](https://forthebadge.com) [![forthebadge](https://forthebadge.com/images/badges/compatibility-club-penguin.svg)](https://forthebadge.com) [![forthebadge](https://forthebadge.com/images/badges/fo-real.svg)](https://forthebadge.com) [![forthebadge](https://forthebadge.com/images/badges/made-with-out-pants.svg)](https://forthebadge.com) [![forthebadge](https://forthebadge.com/images/badges/powered-by-black-magic.svg)](https://forthebadge.com)


## overview

hey what's up mtv welcome to my crib

it's easier for me to throw these configuration files on github instead of losing them all the time, so enjoy them! 

ideally, this is system agnostic, but here's a list of configurations that i'm using and why i'm using them: 


## programs 
<!-- todo: add more programs -->

|program|purpose|file(s)|link|
|---|---|---|---|
|`alacritty`|terminal emulator|[`alacritty/alacritty.conf`](alacritty/alacritty.conf)|[🔗](https://github.com/alacritty/alacritty)
|`sway`|wayland tiling window manager|[`sway/config`](sway/config)|[🔗](https://github.com/swaywm/sway)|
|`mako`|wayland notification daemon|[`mako/config`](mako/config)|[🔗](https://github.com/emersion/mako)|
|`ulauncher`|modern application launcher|[`included with sway`|[🔗](https://github.com/Ulauncher/Ulauncher)
|`wofi`|dmenu alternative|`included with sway, backup to ulauncher since it has issues with launching things non-wayland when forced into wayland mode`|[🔗](https://hg.sr.ht/~scoopta/wofi)|

i'll eventually write some more documentation.

## branches 

* [stable](https://github.com/takouhai/dotfiles/tree/stable) is the most recent configuration that i deemed "worthy to ship".
* [dev](https://github.com/takouhai/dotfiles/tree/dev) is my current "bleeding edge" configuration that i update often. no promises on that one working. good luck!


## license

they're under the [wtfpl](license.md), so do wtf you want with them. scripts i've found online should have a source attached or proper attribution. if they don't, [let me know](https://github.com/takouhai/dotfiles/issues/new).


## questions/issues

**any questions?** [submit an issue!](https://github.com/takouhai/dotfiles/issues/new)
