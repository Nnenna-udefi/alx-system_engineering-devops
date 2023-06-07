exec { 'fix_apache':
  command     => 'sed -i "s/phpp/php/g" /var/www/html/wp-settings.php',
  provider    => shell,
  refreshonly => true
}
