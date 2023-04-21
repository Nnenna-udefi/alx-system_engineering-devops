# execute a command
# the pkill command kills any orocess with the name killmenow
# onlyif parameter specifies that the pgrep command should be used to check
# if a process with the name killmenow is running before attempting to kill it

exec { 'killmenow':
  command => 'pkill -f killmenow',
  onlyif  => 'pgrep -f killmenow',
  path => '/usr/bin/:/usr/local/bin/:/bin/'
}
