node default {
  include first_file
  include sshd
  include user::virtual
  include user::sysadmins
  include ntp
  class { ntp:
    ensure     => running,
    servers    => [ "ineri.switch.ch iburst",
                    "myoko.switch.ch iburst" ],
    autoupdate => true,
  }
}
