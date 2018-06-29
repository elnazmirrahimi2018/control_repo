class minecraft {
  file {'/opt/minecraft':
    ensure => directory,
  }
  file {'/opt/minecraft/minecraft_server.jar:
    ensure => file,
    source =>'https://s3.amazonaws.com',
   }
   package {'java':
     ensure => present,
   }
   file { '/opt/minecraft/eula.txt':
     ensure => file,
     content =>'eula=true',
   }
   file {'/etc/systemd/system/minecraft.service':
      ensure => file,
      source => 'puppet:///modules/minecraft/minecraft.service',
   }
   
 }
   
 }
