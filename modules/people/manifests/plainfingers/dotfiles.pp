class people::plainfingers::dotfiles {

  notify { 'class people::plainfingers::dotfiles declared': }

  include dotfiles

  # vimrc
  file { "/Users/${::boxen_user}/.vimrc":
    ensure  => link,
    mode    => '0644',
    target  => "/Users/${::boxen_user}/dotfiles/vimrc",
    require => Repository["/Users/${::boxen_user}/dotfiles"]
  }

#  # vim colorscheme
#  file { "/Users/${::boxen_user}/.vimrc":
#    ensure  => link,
#    mode    => '0644',
#    target  => "/Users/${::boxen_user}/dotfiles/vimrc",
#    require => Repository["/Users/${::boxen_user}/dotfiles"]
#  }

  # ackrc
  file { "/Users/${::boxen_user}/.ackrc":
    ensure  => link,
    mode    => '0644',
    target  => "/Users/${::boxen_user}/dotfiles/ackrc",
    require => Repository["/Users/${::boxen_user}/dotfiles"]
  }

  # ctags
  file { "/Users/${::boxen_user}/.ctags":
    ensure  => link,
    mode    => '0644',
    target  => "/Users/${::boxen_user}/dotfiles/ctags",
    require => Repository["/Users/${::boxen_user}/dotfiles"]
  }

  # tmux
  file { "/Users/${::boxen_user}/.tmux.conf":
    ensure  => link,
    mode    => '0644',
    target  => "/Users/${::boxen_user}/dotfiles/tmux.conf",
    require => Repository["/Users/${::boxen_user}/dotfiles"]
  }

  # zsh and prezto
  file { "/Users/${::boxen_user}/.zlogin":
    ensure  => link,
    target  => "/Users/${::boxen_user}/.zprezto/runcomms/zlogin",
    require => Repository["/Users/${::boxen_user}/.zprezto"]
  }

  file { "/Users/${::boxen_user}/.zlogout":
    ensure  => link,
    target  => "/Users/${::boxen_user}/.zprezto/runcomms/zlogout",
    require => Repository["/Users/${::boxen_user}/.zprezto"]
  }

  file { "/Users/${::boxen_user}/.zpreztorc":
    ensure  => link,
    target  => "/Users/${::boxen_user}/dotfiles/zpreztorc",
    require => Repository["/Users/${::boxen_user}/dotfiles"]
  }

  file { "/Users/${::boxen_user}/.zshenv":
    ensure  => link,
    target  => "/Users/${::boxen_user}/dotfiles/zshenv",
    require => Repository["/Users/${::boxen_user}/dotfiles"]
  }

  file { "/Users/${::boxen_user}/.zprofile":
    ensure  => link,
    target  => "/Users/${::boxen_user}/dotfiles/zprofile",
    require => Repository["/Users/${::boxen_user}/dotfiles"]
  }

  file { "/Users/${::boxen_user}/.zshrc":
    ensure  => link,
    target  => "/Users/${::boxen_user}/dotfiles/zshrc",
    require => Repository["/Users/${::boxen_user}/dotfiles"]
  }

  # TODO figure out how to do this
  #  exec { 'change default shell':
  #    command => 'sudo chsh -s "$(command -v zsh)" "${USER}"'
  #  }

}
