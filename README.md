# peepee-theme README

Simple colour theme for VSCode.

Uses colour values from https://github.com/jan-warchol/selenized

Basic ideas:
- hide what doesn't need to be read, e.g. `defp` for  `defp method_name` in languages like Elixir
- create typographic hierarchies
    - e.g. bold method names when they're being defined, but regular weight method names when called
    - italicize constants, properties, and background information
    - strike-out unused variables, and other code that should be implied to be unused/unneeded
    - `return`s are bold to denote importance
- create colour relationships
    - regular code is a bright foreground white
    - distinguish "types" of code with visually separate colours
        - modules and methods called on modules are different shades of calming blue
        - constants are orange
        - strings are green
        - attributes are pink
    - control code is grey to recede a bit in to the background
    - unimportant details (e.g. `defp`) are a dark grey to almost disappear

The theme should make it easier to read the code that's important, and easier to ignore code that's not as important.