class ceph {
  file { 'ceph':
    name => '/etc/ceph/ceph.conf',
    owner => 'root',
    group => 'root',
    mode => '0644',
    source => 'puppet:///ceph/ceph.conf',
    },
    service { 'ceph':
      ensure => running,
      hasstatus  => true,
      hasrestart => true,
      subscribe => File['ceph'],
      }
  }
  
