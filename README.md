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

$ moves to the last character on the line.

0 moves to the start of the line.

g$ goes to the end of the screen line (when a buffer line is wrapped across multiple screen lines)

A to move to the end of the line and switch to editing mode (Append)

ggVG #Select All

u # Undo

Ctrl + R # Redo

Ctrl-W, Up Arrow # Move between split windows

#For basic searching:

/pattern       - search forward for pattern

?pattern       - search backward

n              - repeat forward search

N              - repeat backward

/*              - search for word currently under cursor


#Search and Replace:

:[range]s/search/replace/
e.g.

Search entire file and replace all occurences
:%s/search/replace/g

Search from line 8 to 10 file and replace all occurences
:8,10 s/search/replace/g 

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



#Diff between two files

:vs otherfile (open otherfile in vertical split screen)

:diffthis (turn on diff mode in original file)

Ctrl+w l/h  (swap to newly opened file)

:diffthis (turn on diff mode in opened file)

Turn off diff

:diffoff in each pane

:diffget to merge 

:63diffget

# Git Commands

# [Remove the offending ssh key](http://bit.ly/2e6h7g5)

sed -i '6d' ~/.ssh/known_hosts

git config --global user.name "My name is..."

git config --global user.email my_email@domain.com

git config user.name "My name for this project is..." on your local project folder.

git config user.name my_email@domain.com on your local project folder.

For editing

git config --global -e

git config -e (to edit local config)

git config -l

git branch #Shows what branch you are on 

git checkout -b dev_new # Creates a new branch

git remote rename origin new_origin

git remote add upstream url

git log --follow filename # Shows commit only for that specific file

#Not clear
git push -u origin dev_new 

git push --set-upstream origin dev_ankit



