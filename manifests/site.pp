node default {
  include first_file
  include sshd
  include user::virtual
  include user::sysadmins
  include ntp
}

## We want NTP running on the servers for better synchronization.
##
## ineri and myoko are used as NTP servers.  We cannot use arbitrary
## NTP servers on the Internet (such as the popular "pools") because
## of filter policy.
##
class { ntp:
  ensure     => running,
  servers    => [ "ineri.switch.ch iburst",
                  "myoko.switch.ch iburst" ],
  autoupdate => true,
}
