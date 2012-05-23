# Vim configuration

My Vim configuration for Python programming and possibly other stuff.  Since
I've been using Emacs hitherto and am fairly new to Vim, this is somewhat
ragged and incomplete.  Ideas for improvement or cool new tricks are welcome!


## Plugins

I'm using the following plugins (managed with [Pathogen][] of course):

### User interface

Some nice extensions to the user interface:

- Open files super-fast and super-easy with [Command-T][].  It also switches
  buffers the same fancy way.
- Explore files and projects with [NerdTree][]
- Tame wild buffers with a nice buffer list provided by [MiniBufExplorer][]

The default color scheme is [Solarized light][solarized], a nice low-contrast
colorscheme that really pleases the eye even after hours of work. Additionally
I've installed a bunch of other schemes, but hardly use them:

- [InkPot][]
- [ZenBurn][]
- `summerfruit`, `myterm` and `pyte` (all also taken from [Armin
  Ronacher's][ar] [vim configuration][arvim])

The font used is [Consolas][], a proprietary font from Microsoft, which can be
[downloaded from Microsoft][consolasdownload] at no cost. If you prefer a free
font, that a look at [Inconsolata][], which is influenced by Consolas. It is
generally equivalent in appearance, but less fancy in my opinion.


### Version control

Integrate various VCS into vim:

- Highlight git configuration files with [git-vim][]
- `git` from within Vim with [fugitive][]
- Create gists from within Vim with [gist-vim][]


### Editing and programming

Utilities for text editing and programming:

- [surround][] text with stuff
- [repeat][] any command
- Comment text with [commentary][]
- Text snippets with [snipmate][], including a bunch of [ready to use
  snippets][snippets] ([tlib][] and [mw-utils][] are required for snipmate)
- Tab key completion powered by [supertab][]
- Graphical undo and redo with [Gundo][]
- Check syntax with [syntastic][]
- Don't grep, [ack][] ftw
- Three way diffing and merging with [splice][]
- Preview all sorts of markup with [Hammer][] (requires `gem install
  github-markup tilt`)


### Python support

- Indent Python correctly (as by PEP 8) with
  [`indent/python.vim`][python-indent]
- Check Python syntax and style with [syntastic][] and [`flake8`][flake8], which
  integrates [`pyflakes`][pyflakes] for error checking and [`pep8`][pep8] for
  style checking
- View Python documentation within vim with [pydoc.vim][pydoc]


### HTML and CSS support

- Conveniently insert tags with [ZenCoding][]


### CoffeeScript support

- Edit CoffeeScript with help of [vim-coffee-script][]


### Other languages

- [markdown][] support
- LaTeX editing with [LaTeX-suite][latex]


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

- Add py.test and ropevim
- Integrate tox into Python to test straight from Vim?


[pathogen]: https://github.com/tpope/vim-pathogen
[command-t]:https://github.com/wincent/Command-T
[nerdtree]: https://github.com/scrooloose/nerdtree
[MiniBufExplorer]: https://github.com/fholgado/minibufexpl.vim
[ar]: https://github.com/mitsuhiko
[arvim]: https://github.com/mitsuhiko/dotfiles/tree/master/vim
[solarized]: https://github.com/altercation/vim-colors-solarized
[inkpot]: https://github.com/ciaranm/inkpot
[zenburn]: https://github.com/jnurmine/Zenburn
[consolas]: http://en.wikipedia.org/wiki/Consolas
[consolasdownload]: http://www.microsoft.com/download/en/details.aspx?displaylang=en&id=17879
[inconsolata]: http://en.wikipedia.org/wiki/Inconsolata
[git-vim]: https://github.com/tpope/vim-git
[fugitive]: https://github.com/tpope/vim-fugitive
[gist-vim]: https://github.com/mattn/gist-vim
[surround]: https://github.com/tpope/vim-surround
[repeat]: https://github.com/tpope/vim-repeat
[commentary]: https://github.com/tpope/vim-commentary
[snipmate]: https://github.com/garbas/vim-snipmate
[snippets]: https://github.com/honza/snipmate-snippets
[tlib]: https://github.com/tomtom/tlib_vim
[mw-utils]: https://github.com/MarcWeber/vim-addon-mw-utils
[supertab]: https://github.com/ervandew/supertab
[gundo]: https://github.com/sjl/gundo.vim
[syntastic]: https://github.com/scrooloose/syntastic
[ack]: https://github.com/mileszs/ack.vim
[splice]: https://github.com/sjl/splice.vim
[hammer]: https://github.com/matthias-guenther/hammer.vim
[python-indent]: http://www.vim.org/scripts/script.php?script_id=974
[python-syntax]: http://www.vim.org/scripts/script.php?script_id=790
[flake8]: http://pypi.python.org/pypi/flake8
[pyflakes]: http://pypi.python.org/pypi/pyflakes
[pep8]: http://pypi.python.org/pypi/pep8
[pydoc]: https://github.com/fs111/pydoc.vim
[zencoding]: http://mattn.github.com/zencoding-vim/
[vim-coffee-script]: https://github.com/kchmck/vim-coffee-script
[markdown]: https://github.com/tpope/vim-markdown
[latex]: http://vim-latex.sourceforge.net/
[vim-ide]: http://sontek.net/turning-vim-into-a-modern-python-ide
[coming-home]: http://stevelosh.com/blog/2010/09/coming-home-to-vim/
[tpope]: https://github.com/tpope
