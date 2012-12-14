class user::virtual
{
    define ssh_user( $key, $uid, $shell )
    {
        user { $name:
	    ensure	=> present,
	    managehome	=> true,
	    gid		=> 4,
	    uid		=> $uid,
	    shell	=> $shell,
	     }

	ssh_authorized_key { "${name}_key":
	    key		=> $key,
	    type	=> "ssh-rsa",
	    user	=> $name,
			   }
    }

    @ssh_user { "leinen":
	key	=> "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAIEAwWkB1KjtjR+CCTiupf2ipux6V8tKPTzsNLgf+CMqfAlH6hIi7zNwM6Ut9WnhY6HkuBbOVQJkLSxnBaeJwJUU5DCFs/TXWgj3ubVcuSrvSDRuYYqq5oUOGqu3wWjoCx/uxLVhy4ViSuGk9w1B5SOSTn5BM+7Y1i+5QmD3IC5N9ps= leinen@babar",
	uid	=> 1000,
	shell	=> "/bin/bash",
	      }

    @ssh_user { "casutt":
	key	=> "sh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAxh4I07YX4I8bUSBhESG+otol8dtXF+DRe1eAMXcYQevxhv9rJOmZZh4BdqJf7K2doWiz3As1AnKS23oL6c2Z/aUIOulrOdwu9M89oDys+GnHDYpdhno45mUhzmwC2K8nv4WOWxCZviC77pQocu83Jv2rcSCcrFjLuCNMBiw3HnQBB5Y8GBZibjewnUMqm5ENVZZcsr4pdI9aI8NPVqX9u9I2mI5PF30ua4LRVPFyGMQ3rTmW9nz7i5hkAvh5nxyBSqky8J3N//eSRQpmB9f9yNeaG0Jkz3m7rTRJ6Sb0xnXAGmS77t6GrPy4Wxz3zLhesiHDTBK9zRGpMmHQpv9syQ== casutt@macjc.switch.ch",
	uid	=> 1038,
	shell	=> "/bin/bash",
	      }      
}
