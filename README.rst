Vim configuration
=================

My Vim configuration for Python programming and possibly other stuff.  Since
I've been using Emacs hitherto and am fairly new to Vim, this is somewhat ragged
and incomplete.  Ideas for improvement or cool new tricks are welcome! 


Plugins
-------

I'm using the following plugins (managed with Pathogen_ of course):


User interface
^^^^^^^^^^^^^^

Some nice extensions to the user interface:

- Explore files and projects with NerdTree_
- Tame wild buffers with a nice buffer list provided by MiniBufExplorer_

The default color scheme is ``fruity``, taken from Armin Ronacher's `vim
configuration`_, but I've also installed some other schemes:

- ``summerfruit``, ``myterm`` and ``pyte`` (all also taken from Armin Ronacher's
  `vim configuration`_)
- `solarized`_


Version control
^^^^^^^^^^^^^^^

Integrate various VCS into vim:

- Highlight git configuration files with git-vim_
- ``git`` from within Vim with fugitive


Editing and programming
^^^^^^^^^^^^^^^^^^^^^^^

Utilities for text editing and programming:

- surround_ text with stuff
- repeat_ any command
- Comment text with commentary_
- Text snippets with snipmate_
- Graphical undo and redo with Gundo_
- Check syntax with syntastic_
- Don't grep, ack_ ftw


Python support
^^^^^^^^^^^^^^

Python indentation and syntax support is provided by `indent/python.vim`_ and
`python.vim`_ (not available for use with pathogen_ and hence copied straight
into this repository).

`syntastic`_ checking of Python code is powered by `flake8`_ which integrates
`pyflakes`_ for error checking and `pep8`_ for style checking.


Other languages
^^^^^^^^^^^^^^^

- `markdown`_


Credits
-------

Credits for this Vim configuration go to:

- `Armin Ronacher`_ for his `vim configuration`_, from which much in my
  configuration was taken
- John Anderson for his article `Turning Vim into a modern Python IDE`_
- Steve Losh for his article `Coming Home to Vim`_
- `Tim Pope`_ for pathogen_ and all his other awesome Vim plugins


TODO
----

What remains to be done in this configuration:

- Use consolas as font
- Add supertab, ropevim and command-t
- Integrate tox into Python to test straight from Vim


.. _Pathogen: https://github.com/tpope/vim-pathogee
.. _NerdTree: https://github.com/scrooloose/nerdtree
.. _MiniBufExplorer: https://github.com/fholgado/minibufexpl.vim
.. _git-vim: https://github.com/tpope/vim-git
.. _fugitive: https://github.com/tpope/vim-fugitive
.. _surround: https://github.com/tpope/vim-surround
.. _repeat: https://github.com/tpope/vim-repeat
.. _commentary: https://github.com/tpope/vim-commentary
.. _snipmate: https://github.com/msanders/snipmate.vim
.. _gundo: https://github.com/sjl/gundo.vim
.. _syntastic: https://github.com/scrooloose/syntastic
.. _ack: https://github.com/mileszs/ack.vim
.. _indent/python.vim: http://www.vim.org/scripts/script.php?script_id=974
.. _python.vim: http://www.vim.org/scripts/script.php?script_id=790
.. _flake8: http://pypi.python.org/pypi/flake8
.. _pyflakes: http://pypi.python.org/pypi/pyflakes
.. _pep8: http://pypi.python.org/pypi/pep8
.. _markdown: https://github.com/tpope/vim-markdown
.. _armin ronacher: https://github.com/mitsuhiko
.. _vim configuration: https://github.com/mitsuhiko/dotfiles/tree/master/vim
.. _turning vim into a modern python ide: http://sontek.net/turning-vim-into-a-modern-python-ide
.. _coming home to vim: http://stevelosh.com/blog/2010/09/coming-home-to-vim/
.. _tim pope: https://github.com/tpope
.. _solarized: https://github.com/altercation/vim-colors-solarized

