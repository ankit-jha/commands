# commands

vi command mode

:set number  #Set Line number

:set nonumber #Toggle Line number

:set guifont=Ubuntu\ Mono #Set your fonts

:syntax on #Set Syntax highlighting on

:colorscheme darkblue #Set Colorscheme

:set ruler # Displays column number

:cal cursor(1,25)

Esc + G # End Of line

gg # First Line

123G # Go To Line

u # Undo

Ctrl + R # Redo

Ctrl-W, Up Arrow # Move between split windows

#For basic searching:

/pattern       - search forward for pattern
?pattern       - search backward
n              - repeat forward search
N              - repeat backward
*              - search for word currently under cursor

# Git Commands

# [Remove the offending ssh key](http://bit.ly/2e6h7g5)

sed -i '6d' ~/.ssh/known_hosts


