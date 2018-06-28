class profile::agent_nodes {
 include dockeragent
 dockeragent::node {'web.puppet.vm'}
 dockeragent::node {'db.puppet.vm'}
 dockeragent::node {'minetest.puppet.vm':}
 host { 'web.puppet.vm':
   ensure => present,
   ipaddress =>"10.0.2.15"
   }
