# My Notes

## Presenting 
* Customizing vim with vimrc
* File and Nav remaps
* Marks

## vimrc
* vim -> vimrc
* neovim -> .config/nvim/init.vim
* whatever we `:set` in vim can go into vimrc for persisting settings across sessions
* settings he reviews:
* * number relnumber
* * colorscheme
* * 

## Remaps
* mapleader - mine is space like Prime
* * first letter is vim mode
* inoremap, vnoremap, nnoremap
* * `nore` is "no recursive" meaning the remap doesn't do other remaps
* * `map` is the map
* * `nnoremap <leader> pv :Vex<CR>` is a command Prime did to bring up the default file tree view with `pv` or "project view"
* Keep remaps at 3 keys or less
* Prime says to always use a leader key to avoid annoying artifacts
* * example is remapping `pv` like above wtihout the leader key will make every "paste" command hang for a few millliseconds because vim is waiting for you to do the remap before executing the default `p` behavior

## Marks
* `m <Capital Letter>` will create a mark that spans the vim buffer (global level)
* `m <lower case letter>` will create a mark that is only for that file (file level)
* jump to a mark with `'<letter>`

## Presenting Session 2
* My First Vim Plugin
* What Makes a Good Plugin

## Registers
yank this into the b register with shift+v "b y
Can I paste from the register?
yes, with "bp

* whatever we `:set` in vim can go into vimrc for persisting settings across sessions

* Power of this is that you can edit macros since they get saved to the register - just find the register with the macro, paste it in a file, edit, and yank it into a new register, then call the macro with @ and whatever register you yanked to

## My First Vim Plugin
* Prime write one in VimL
    ```
    fun! Scrtch(cmd)
        new
        setlocal nobuflisted buftype=nofile bufhidden=delete
        let output = call systemlist(a:cmd)

        call append(0, l:output)
    endfun
    ```
    * Vim become about knowing what you want to do rather than thinking about how to do it
## What Makes a Good Plugin
* If you have to memorize bunch of things that aren't a simple set of keystrokes that eventully become second nature than there is something wrong with the plugin

