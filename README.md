# Vi Commands

## vimrc settings
    
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

## vi commands

    G # Go to Last line

    A # Move to the end of the line and switch to editing mode (Append)

    gg # First Line

    123G # Go To Line
    
    H #Top of the screen
    
    L #Bottom of the screen

    $ moves to the last character on the line.

    0 moves to the start of the line.

    g$ goes to the end of the screen line (when a buffer line is wrapped across multiple screen lines)

    q: To access command history

    ggVG #Select All

    u # Undo

    Ctrl + R # Redo

    Ctrl-W, Up Arrow # Move between split windows
    
    :cal cursor(1,25) #Moves the cursor to given row and column
    
    :%d  #Delete All lines
    
    :%j  #Join all the lines  

    where

    : tells vi to go in command mode
    % means all the line
    d : delete

#Repeat last change

    The "." command repeats the last change made in normal mode. For example, if you press dw to delete a word, you can then press . to     delete another word (. is dot, aka period or full stop).

    The "@:" command repeats the last command-line change (a command invoked with ":", for example :s/old/new/). 

#For opening and switching tabs in vim terminal
    
    Open tab: tabnew
    
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
    :%s/search/replace/g #Search entire file and replace all occurences

Search from line 8 to 10 file and replace all occurences

    :8,10 s/search/replace/g 

#Search And List All Occurences (The grep tool was named after this command sequence)

    :g/pattern/p
    
    :global/pattern/print

#Copy & The Paste Line Below or Above The Cursor

    yy p/P

Explanation:

    yy
        Yank (Copy) the line
    p
        Paste the line below
    P
        Paste the line above

#Open multiple files from command line

    vim -o a b c Starts vim with several files in a splitted window

    vim -O a b c Starts vim with several files in a horizontal window

    vim -p a b c Starts vim with several files in a tabs

#Copy & The Paste Multiple Lines Below/Above The Cursor

    Shift + v + J/K + p/P

Explanation:

    Shift + v
        Enter Visual Line Mode
    J/K
        Select line by moving up (J) or down (K)
    p/P
        Paste the lines below (p) or above (P) the cursor


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

Use below command to yank all lines.

    :%y+

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

## Remote editing of files

###  Opening file outside the vim editor
    $vim scp://user@server.com/filepath
    e.g. $vim scp://jarvis@remote-server.com//tmp/message.txt

###  Opening file inside the vim editor
    :e scp://username@host.com/path/to/file
    e.g. scp://jarvis@remote-server.com//tmp/message.txt
    :Nread scp://jarvis@localhost//tmp/message.txt # Using net read
    
###  Saving the file
    :set bt=acwrite # Setting buffer type to write
    :w # Save the file
    :Nwrite scp://jarvis@localhost//tmp/message.txt # Using net write    
    
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
