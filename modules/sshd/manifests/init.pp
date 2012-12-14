class sshd {

    package { 'openssh-server':
        ensure => latest
    }

    service { 'ssh':
        subscribe => File[sshdconfig],
        require => Package['openssh-server'],
    }

    file { 'sshdconfig':
        name => '/etc/ssh/sshd_config',
        owner => root,
        group => root,
        mode => 644,
        source => 'puppet:///sshd/sshd_config',
        require => Package['openssh-server'],
    }
}
