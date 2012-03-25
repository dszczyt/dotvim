# Vim configuration

My Vim configuration for Python programming and possibly other stuff.  Since
I've been using Emacs hitherto and am fairly new to Vim, this is somewhat
ragged and incomplete.  Ideas for improvement or cool new tricks are welcome!


## Plugins

I'm using the following plugins (managed with [Pathogen][pathogen] of course):

### User interface

Some nice extensions to the user interface:

- Explore files and projects with [NerdTree][nerdtree]
- Tame wild buffers with a nice buffer list provided by
  [MiniBufExplorer][minibufexpl]

The default color scheme is `fruity`, taken from [Armin Ronacher's][ar] [vim
configuration][arvim], but I've also installed some other schemes:

- `summerfruit`, `myterm` and `pyte` (all also taken from [Armin
  Ronacher's][ar] [vim configuration][arvim])
- [solarized light and dark][solarized]

The font used is Consolas, a proprietary font from Microsoft shipped with
various Microsoft products like Visual Studio or Microsoft Office.  Hence
you'll need a license for any of these products, if you want to use this font,
too.  Alternatively you can use Inconsolata, a free replacement for Consolas,
which is generally equivalent, though less fancy in my opinion.


### Version control

Integrate various VCS into vim:

- Highlight git configuration files with [git-vim][git-vim]
- `git` from within Vim with [fugitive][fugitive]


### Editing and programming

Utilities for text editing and programming:

- [surround][surround] text with stuff
- [repeat][repeat] any command
- Comment text with [commentary][commentary]
- Text snippets with [snipmate][snipmate]
- Tab key completion powered by [supertab][supertab]
- Graphical undo and redo with [Gundo][gundo]
- Check syntax with [syntastic][syntastic]
- Don't grep, [ack][ack] ftw


### Python support

- Highlight Python nicely with [python.vim][python-syntax]
- Indent Python correctly (as by PEP 8) with [indent/python.vim][python-indent]
- Check Python syntax and style with [syntastic][syntastic] and
  [`flake8`][flake8], which integrates [`pyflakes`][pyflakes] for error
  checking and [`pep8`][pep8] for style checking
- View Python documentation within vim with [pydoc.vim][pydoc]


### Other languages

- [markdown][markdown] support


Credits
-------

Credits for this Vim configuration go to:

- [Armin Ronacher][ar] for his [vim configuration][arvim], from which much in my
  configuration was taken
- John Anderson for his article [Turning Vim into a modern Python IDE][vim-ide]
- Steve Losh for his article [Coming Home to Vim][coming-home]
- [Tim Pope][tpope] for [pathogen][pathogen] and all his other awesome Vim plugins


TODO
----

What remains to be done in this configuration:

- Add py.test, ropevim and command-t
- Integrate tox into Python to test straight from Vim?


[pathogen]: https://github.com/tpope/vim-pathogen
[nerdtree]: https://github.com/scrooloose/nerdtree
[MiniBufExplorer]: https://github.com/fholgado/minibufexpl.vim
[ar]: https://github.com/mitsuhiko
[arvim]: https://github.com/mitsuhiko/dotfiles/tree/master/vim
[solarized]: https://github.com/altercation/vim-colors-solarized
[git-vim]: https://github.com/tpope/vim-git
[fugitive]: https://github.com/tpope/vim-fugitive
[surround]: https://github.com/tpope/vim-surround
[repeat]: https://github.com/tpope/vim-repeat
[commentary]: https://github.com/tpope/vim-commentary
[snipmate]: https://github.com/msanders/snipmate.vim
[supertab]: https://github.com/ervandew/supertab
[gundo]: https://github.com/sjl/gundo.vim
[syntastic]: https://github.com/scrooloose/syntastic
[ack]: https://github.com/mileszs/ack.vim
[python-indent]: http://www.vim.org/scripts/script.php?script_id=974
[python-syntax]: http://www.vim.org/scripts/script.php?script_id=790
[flake8]: http://pypi.python.org/pypi/flake8
[pyflakes]: http://pypi.python.org/pypi/pyflakes
[pep8]: http://pypi.python.org/pypi/pep8
[pydoc]: https://github.com/fs111/pydoc.vim
[markdown]: https://github.com/tpope/vim-markdown
[vim-ide]: http://sontek.net/turning-vim-into-a-modern-python-ide
[coming-home]: http://stevelosh.com/blog/2010/09/coming-home-to-vim/
[tpope]: https://github.com/tpope

