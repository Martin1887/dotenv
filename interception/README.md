The project https://gitlab.com/interception/linux/plugins/dual-function-keys
allow using the same key for different purposes if it is pushed alone or in
combination of other keys.

This allows to a better use of the keyboard without moving your hands from the
typing position. This configuration provides the following mappings:

- `CAPS LOCK` as `Esc` for fast pushes and `Ctrl` in combination of other keys.
- `Tab` as `Tab` for fast pushes and `Alt. Gr.` in combination of other keys
(greatly to write square and curly brackets and special keys in combination of
the modified layout [`Home`, `End`, `Page Up` and `Page Down`]).
- `Left Ctrl` as `CAPS LOCK` for fast pushes and `Ctrl` in combination of other
keys.
- `Esc` as `KEY_GRAVE` (`º/ª/\` in Spanish layouts) mainly for backslashes on
keyboards with that key in the same place that `Esc` in Spanish layouts.

The `interception` folder must be placed into the `/etc` folder of the system
and **before starting the udevmon daemon the name of your keyboard must be set
in the `udevmon.yaml` file**. To find the instructions to find your keyboard
name check
https://gitlab.com/interception/linux/plugins/dual-function-keys#udevmon.
