node default {
    include first_file
    include sshd
    include user::virtual
    include user::sysadmins
}
