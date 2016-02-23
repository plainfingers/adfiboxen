class people::plainfingers {

  include people::plainfingers::applications::vim
  include people::plainfingers::dotfiles
  
  # TODO get osx_chsh
  # sudo chsh -s "$(command -v zsh)" "${USER}"}")
  #include osx
  #include zsh

  $home     = "/Users/${::luser}"
  $dotfiles = "${home}/dotfiles"

  repository { $dotfiles:
    source  => 'plainfingers/dotfiles'
  }

  repository { "/Users/${::boxen_user}/.zprezto":
    source  => 'sorin-ionescu/prezto'
  }

  class {'vagrant':}


  # TODO - fixes
  # include dropbox
  # include virtualbox
}
