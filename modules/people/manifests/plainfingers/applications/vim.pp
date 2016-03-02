class people::plainfingers::applications::vim {

  notify { 'class people::plainfingers::applications::vim declared': }

  include vim

  # TODO figure out how to get pathogen to install in a cleaner way
  # I thought puppet-vim would do it, but it isn't working
  exec { 'Setup pathogen dirs':
    command => "mkdir -p /Users/chad/.vim/autoload /Users/chad/.vim/bundle",
    creates => "/Users/chad/.vim/autoload"
  }
  exec { 'Download pathogen':
    command => "curl -LSso /Users/chad/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim",
    creates => "/Users/chad/.vim/autoload/pathogen.vim"
  }

  # tpope favs
  vim::bundle { 'tpope/vim-fugitive': }
  vim::bundle { 'tpope/vim-haml.git': }
  vim::bundle { 'tpope/vim-repeat.git': }
  vim::bundle { 'tpope/vim-surround': }
  vim::bundle { 'tpope/vim-rails': }

  vim::bundle { 'mileszs/ack.vim.git': }
  vim::bundle { 'kien/ctrlp.vim': }
  vim::bundle {'tsaleh/vim-align.git': }
  vim::bundle { 'scrooloose/nerdtree': }
  vim::bundle { 'scrooloose/syntastic.git': }
  vim::bundle { 'scrooloose/nerdcommenter.git': }

  # maybe
  vim::bundle { 'Raimondi/delimitMate.git': }
  vim::bundle { 'hallison/vim-markdown': }
  vim::bundle { 'kchmck/vim-coffee-script.git': }
  vim::bundle { 'kien/rainbow_parentheses.vim.git': }
  vim::bundle { 'rodjek/vim-puppet.git': }
  vim::bundle { 'vim-ruby/vim-ruby': }

  ## colorschemes
  vim::bundle { 'plainfingers/black_is_the_color.git': }
  vim::bundle { 'altercation/vim-colors-solarized.git': }
  vim::bundle { 'tomasr/molokai.git': }



  # -----------------------------------------
  # things to check out later
  # -----------------------------------------
  #vim::bundle { 'Bogdanp/rbrepl.vim.git': }
  #vim::bundle { 'Lokaltog/vim-powerline.git': }
  #vim::bundle { 'Valloric/YouCompleteMe.git': }
  #vim::bundle { 'digitaltoad/vim-jade.git': }
  #vim::bundle { 'epeli/slimux.git': }
  #vim::bundle { 'godlygeek/tabular': }
  #vim::bundle { 'guns/vim-clojure-static.git': }
  #vim::bundle { 'heavenshell/vim-jsdoc.git': }
  #vim::bundle { 'mattn/zencoding-vim.git': }
  #vim::bundle { 'ndhoule/vim-ragtag.git': }
  #vim::bundle { 'slim-template/vim-slim.git': }
  #vim::bundle { 'terryma/vim-multiple-cursors.git': }
  #vim::bundle { 'tomtom/tcomment_vim.git': }
  #vim::bundle { 'vim-scripts/Rename.git': }
  #vim::bundle { 'vim-scripts/YankRing.vim.git': }
  #vim::bundle { 'vim-scripts/bufexplorer.zip.git': }
  #vim::bundle { 'vim-scripts/bufkill.vim.git': }
  #vim::bundle { 'vim-scripts/fakeclip.git': }
  #vim::bundle { 'vim-scripts/guicolorscheme.vim': }
  #vim::bundle { 'vim-scripts/jQuery.git': }
  #vim::bundle { 'vim-scripts/scratch.vim.git': }


}
