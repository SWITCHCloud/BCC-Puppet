class user::virtual
{
    define ssh_user( $key, $uid, $gid, $shell )
    {
        user
        {  
           $name:
	         ensure	      => present,
	         managehome	  => true,
	         gid		      => $gid,
	         uid		      => $uid,
	         shell	      => $shell,
	      }

	     ssh_authorized_key 
	     { 
	         "${name}_key":
	         key		      => $key,
	         type	        => "ssh-rsa",
	         user	        => $name,
	         require      => [User[$name]]
			  }
    }

    @ssh_user { "leinen":
	       key	    => "AAAAB3NzaC1yc2EAAAABIwAAAIEAwWkB1KjtjR+CCTiupf2ipux6V8tKPTzsNLgf+CMqfAlH6hIi7zNwM6Ut9WnhY6HkuBbOVQJkLSxnBaeJwJUU5DCFs/TXWgj3ubVcuSrvSDRuYYqq5oUOGqu3wWjoCx/uxLVhy4ViSuGk9w1B5SOSTn5BM+7Y1i+5QmD3IC5N9ps=",
	       uid	    => 925,
	       gid	    => 4,
	       shell	  => "/bin/bash",
	  }

    @ssh_user { "casutt":
	       key	    => "AAAAB3NzaC1yc2EAAAABIwAAAQEAxh4I07YX4I8bUSBhESG+otol8dtXF+DRe1eAMXcYQevxhv9rJOmZZh4BdqJf7K2doWiz3As1AnKS23oL6c2Z/aUIOulrOdwu9M89oDys+GnHDYpdhno45mUhzmwC2K8nv4WOWxCZviC77pQocu83Jv2rcSCcrFjLuCNMBiw3HnQBB5Y8GBZibjewnUMqm5ENVZZcsr4pdI9aI8NPVqX9u9I2mI5PF30ua4LRVPFyGMQ3rTmW9nz7i5hkAvh5nxyBSqky8J3N//eSRQpmB9f9yNeaG0Jkz3m7rTRJ6Sb0xnXAGmS77t6GrPy4Wxz3zLhesiHDTBK9zRGpMmHQpv9syQ==",
	       uid	    => 1038,
	       gid	    => 4,
	       shell	  => "/bin/bash",
	  }      

    @ssh_user { "root":
	       key	    => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCv9lGsV5cH4f2ap7NfocJwFXTL8nQAWRKylC0HubGYr/5uPaG4GFK40ulKewMgUmtxeNwZx9z723xqnA4EEpSMzqtPHa+5DMtr5aAU9LkX1XMiaBpQnyWoqqQUYSMrYB6Ai/oiajlTIHzzgm3ywNtCaR4yfHxS1mFzq7cH406YhoDRpG/BUuvFOvI3LrfVy9pfTFbJG+J96bQwPASDpZLJEqBRYRoPXB2InNcQAlEuiPf9jLGu1njh+l1Us0q6P4Y3NOfpz5eOXuyD9ERlS7Xh1n/sMDPmm/f69J/VpN9sVM/zM0kvRodrQH20mENU/O76pfjM9cPnSoLZF4tbr19f",
	       uid	    => 0,
	       gid	    => 0,
	       shell	  => "/bin/bash",
	  }      
}
