class profile::base (
) {
  include ::ssh
  class { 'ntp':
    servers => $ntp_servers,
  }
  if $facts['os']['family'] == 'RedHat' {
    include ::profile::selinux
  }
}
