# commands

vi command mode

:set number  #Set Line number

:set nonumber #Toggle Line number

:set guifont=Ubuntu\ Mono #Set your fonts

:syntax on #Set Syntax highlighting on

:colorscheme darkblue #Set Colorscheme

:set ruler # Displays column number

:cal cursor(1,25)

G # End Of line

gg # First Line

123G # Go To Line

ggVG #Select All

u # Undo

Ctrl + R # Redo

Ctrl-W, Up Arrow # Move between split windows

#For basic searching:

/pattern       - search forward for pattern

?pattern       - search backward

n              - repeat forward search

N              - repeat backward

*              - search for word currently under cursor




#Copy To Clipboard

You should yank the text to the * or + registers:

gg "*y G

Explanation:

    gg
        gets the cursor to the first character of the file
    "*y
        Starts a yank command to the register * from the first line, until...
    G
        go the end of the file

Use:

:%y+

to yank all lines.

Explanation:

    % to refer the next command to work on all the lines
    y to yank those lines
    + to copy to the system clipboard



# Git Commands

# [Remove the offending ssh key](http://bit.ly/2e6h7g5)

sed -i '6d' ~/.ssh/known_hosts

git config user.name

git config user.email


