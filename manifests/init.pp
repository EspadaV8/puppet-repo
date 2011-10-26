class repo {
	file { "/etc/yum.repos.d/CentOS-Local.repo" :
		ensure => present,
		owner => root,
		group => root,
		mode => 644,
		source => "puppet:///repo/CentOS-Local.repo"
	}

	file { "/etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-5" :
		ensure => present,
		owner => root,
		group => root,
		mode => 0644,
		source => "puppet:///repo/RPM-GPG-KEY-CentOS-5"
	}

	file { "/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL" :
		ensure => present,
		owner => root,
		group => root,
		mode => 0644,
		source => "puppet:///repo/RPM-GPG-KEY-EPEL"
	}
	
	file { "/etc/yum.repos.d/CentOS-Base.repo" :
		ensure => absent
	}
	file { "/etc/yum.repos.d/CentOS-Debuginfo.repo" :
		ensure => absent
	}
	file { "/etc/yum.repos.d/CentOS-Media.repo" :
		ensure => absent
	}
	file { "/etc/yum.repos.d/CentOS-Vault.repo" :
		ensure => absent
	}
}
