class profile::base (
  Array $ntp_servers,
) {
  include ::ssh
  class { 'ntp':
    servers => $ntp_servers,
  }
  include ::ssh
  if $facts['os']['family'] == 'RedHat' {
    include ::profile::selinux
  }
}
