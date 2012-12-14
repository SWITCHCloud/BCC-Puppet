class first_file{
    file { "/tmp/hello-file":
        replace => "no", # this is the important property
        ensure  => "present",
        content => "From Puppet\n",
        mode    => 644,
    }
}
