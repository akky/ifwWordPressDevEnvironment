echo "Installing PHPUnit"
echo ""
sudo pear config-set auto_discover 1
sudo pear upgrade PEAR
sudo pear install pear.phpunit.de/PHPUnit