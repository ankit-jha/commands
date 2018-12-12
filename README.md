# Vi Commands

vimrc settings
    
    :set number  "Display line number

    :set guifont=Ubuntu\ Mono:h16 "Set your font and font-size

    :syntax on "Set syntax highlighting on

    :colorscheme desert "Set colorscheme

    :set hlsearch "Set highlight search on

    :set ruler "Displays column number

    :set backspace=indent,eol,start "Ensures normal backspace key usage

    command! FormatJson %!python -m json.tool "Json formatting via python
    
    "Mapping very magic mode to /
    nnoremap / /\v
 
    :set ignorecase "No case matching
    
    :set smartcase "Only case sensitive when encounters uppercase
    
    :set incsearch "Search as you type

vi commands

    G # End Of line

    gg # First Line

    123G # Go To Line
    
    H #Top of the screen
    
    L #Bottom of the screen

    $ moves to the last character on the line.

    0 moves to the start of the line.

    g$ goes to the end of the screen line (when a buffer line is wrapped across multiple screen lines)

    A to move to the end of the line and switch to editing mode (Append)

    q: To access command history

    ggVG #Select All

    u # Undo

    Ctrl + R # Redo

    Ctrl-W, Up Arrow # Move between split windows
    
    :cal cursor(1,25) #Moves the cursor to given row and column
    
    :%d  #Delete All lines

    where

    : tells vi to go in command mode
    % means all the line
    d : delete

#Repeat last change

    The "." command repeats the last change made in normal mode. For example, if you press dw to delete a word, you can then press . to     delete another word (. is dot, aka period or full stop).

    The "@:" command repeats the last command-line change (a command invoked with ":", for example :s/old/new/). 

#For switching tabs in vim terminal

    Next tab: g t

    Prior tab: g T

    Numbered tab: nnn g t

#For Accessing clipboard

    <Ctrl>*
    In Windows, + and * are equivalent. In unix there is a subtle difference between + and *

#For basic searching:

    /pattern       - search forward for pattern

    ?pattern       - search backward

    n              - repeat forward search

    N              - repeat backward

    *              - search for word currently under cursor

    Ctrl + R + +   -  Ctrl R plus register to copy and search

    q/             - To access search history 


#Search and Replace:

    :[range]s/search/replace/
e.g.

Search entire file and replace all occurences
    
    :%s/search/replace/g

Search from line 8 to 10 file and replace all occurences

    :8,10 s/search/replace/g 

#Search And List All Occurences (The grep tool was named after this command sequence)

    :g/pattern/p
    
    :global/pattern/print

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

#Redirection

    :redir @+
    :history
    :g/fred/
    " any other commands
    :redir END
 
#Set Paging

    :set more

Inserts text from a specified file into the current buffer

    :r textfile

You can also read in the output of shell applications

    :r ! ls -1 /home/user/directory

#Diff between two files

    :vs otherfile (open otherfile in vertical split screen)

    :diffthis (turn on diff mode in original file)

    Ctrl+w l/h  (swap to newly opened file)

    :diffthis (turn on diff mode in opened file)

Turn off diff

    :diffoff in each pane

    :diffget to merge 

    :63diffget

#Windows explorer for vim
    
    :Explore 

#Remote editing of files

    :e scp://username@host.com/path/to/file
    
#Diff and Merging

    ]c – Jump to the next difference
    [c – Jump to the previous difference
    do – Copy the current difference’s text from the file on the right to the file on the left
    dp – Copy the current difference’s text from the file on the left to the file on the right.

Unix uses 0xA for a newline character. Windows uses a combination of two characters: 0xD 0xA. 0xD is the carriage return character. ^M happens to be the way vim displays 0xD.
You c an remove all the ^M characters by running the following:
     
     :%s/^M//g

Where ^M is entered by holding down Ctrl and typing v followed by m, and then releasing Ctrl
    
#commenting:

    visual block select with CTRL-V then I# (insert # in the begining).
    Then press Esc (give it a second), and it will insert a # character on all other selected lines.

#uncommenting:

    visual block select with CTRL-V then x (delete the first symbol on the line)

Please note uppercase I.

#Delete a Block Of Text use visual line mode:

    Put your cursor on the top line of the block of text/code to remove.
    Press V (That's capital "V" : Shift + v )
    Move your cursor down to the bottom of the block of text/code to remove.
    Press d.

# Git Commands

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

git branch --set-upstream-to origin dev_ankit #Creates tracking between remote dev_ankit branch and local dev_ankit branch

git push -u origin dev_new  #The first time that you push dev_new branch it sets up the association between your branch and the one at origin.

git --no-ff #The --no-ff flag causes the merge to always create a new commit object, even if the merge could be performed with a fast-forward. This avoids losing information about the historical existence of a feature branch and groups together all commits that together added the feature

git clone git@github.com:ankit-jha/commands.git -b develop --single-branch #Clone a specific branch

# Homebrew Commands

ruby -e "$(curl -fsSL "https://raw.githubusercontent.com/Homebrew/install/master/install)" # Installs HomeBrew

brew cask  # Installs Cask if it's not there otherwise shows all commands

brew cask install app-name

brew cask uninstall app-name

brew cask search app-name

brew cask cleanup
