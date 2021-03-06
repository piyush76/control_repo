class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCtDirfJuCa8854hTcxZhSEjAzVN9C9rBWSE74P6/dx/ervPE6zEnMrHIFNc1gSI3sGbwdRKXPdIBxSgTjdjvkDq/kySv8y4uqPQ5ahXL665/qM0WZA8FgBHEVGo7F1brb3Yr53vns0HyAdybh41NXf9jF5R+R1bpwrHuQWTWCWuMJk0Tg7aFt+sivsqEttFTUV1QI9rpD4o/MlRCrTMpLcg6UEnXxLfCG3mmdzJAnjw2SvBCTTgK2TR5IWBIHeU3GKxdEbAnguWb/RgFCfriwjgSi8/9xu7hNzLd73Q9qnd81YERIyQW4Eg3s8F3iZZ3Rb9EoyIUuU+C2uqTR/hEkT',
  }
}
