# Vi Commands

vimrc settings
    
    :set number  "Display line number

    :set guifont=Ubuntu\ Mono:h16 "Set your font and font-size

    :syntax on "Set cyntax highlighting on

    :colorscheme desert "Set colorscheme

    :set hlsearch "Set highlight search on

    :set ruler "Displays column number

    :set backspace=indent,eol,start "Ensures normal backspace key usage

    command! FormatJson %!python -m json.tool "Json formatting via python

vi commands

    G # End Of line

    gg # First Line

    123G # Go To Line

    $ moves to the last character on the line.

    0 moves to the start of the line.

    g$ goes to the end of the screen line (when a buffer line is wrapped across multiple screen lines)

    A to move to the end of the line and switch to editing mode (Append)

    q: To access command history

    ggVG #Select All

    u # Undo

    Ctrl + R # Redo

    Ctrl-W, Up Arrow # Move between split windows
    
    :cal cursor(1,25) "Moves the cursor to given row and column

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

#Not clear
git push -u origin dev_new 

git push --set-upstream origin dev_ankit


# Homebrew Commands

ruby -e "$(curl -fsSL "https://raw.githubusercontent.com/Homebrew/install/master/install)" # Installs HomeBrew

brew cask  # Installs Cask if it's not there otherwise shows all commands

brew cask install app-name

brew cask uninstall app-name

brew cask search app-name

brew cask cleanup
