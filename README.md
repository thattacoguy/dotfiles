# .dotfiles

My personal collection of dotfiles.

## current setup

| element | program | config file(s) | local config  |
| --- | --- | --- | --- |
| window manager | [i3](https://i3wm.org/) | `i3/` | `~/.config/i3/` |
| statusbar | [polybar](https://github.com/jaagr/polybar) | `polybar/` | `~/.config/polybar/` |
| notifications | [dunst](https://github.com/dunst-project/dunst) | `dunstrc` | `~/.config/dunstrc` |
| terminal | [termite](https://github.com/thestinger/termite) | `termite/` | `~/.config/termite/` |
| shell | [zsh + oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) | `.zshrc` | `~/.zshrc` |
| text editor | [atom](https://atom.io/) | [not included] | `~/.atom` |
| gui builder  | [gtk](https://www.gtk.org/) | `gtk-3.0/gtk.css` | `~/.config/gtk-3.0/gtk.css` |
| audio visualizer | [cli-visualizer](https://github.com/dpayne/cli-visualizer) | `vis/config` | `~/.config/vis/config` |

(This can/will change according to what I use at the moment.)

## installation

### automatic

`¯\_(ツ)_/¯`

### manual

0. Have all of the mentioned programs installed on your system. None of the configuration files are agnostic - they all depend on each other in some way.

1. Clone the repository to anywhere you like. I normally keep it in `~/.dotfiles/` for easy access.

2. Create symbolic links to each of the files in their respective config location. Example for i3:
```bash
ln -s ~/.dotfiles/i3/config ~/.config/i3/config
```
3. Rice to your heart's content.

## legal

Licensed under the [MIT License](LICENSE)
