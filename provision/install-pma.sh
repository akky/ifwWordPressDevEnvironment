pma_version="4.2.10"
pma_filename="phpMyAdmin-$pma_version-all-languages"

cd /var/www

if [ ! -d "$pma_filename" ]; then
    echo "Installing phpMyAdmin"
    echo "Downloading version $pma_version..."
    wget -q http://downloads.sourceforge.net/project/phpmyadmin/phpMyAdmin/$pma_version/$pma_filename.tar.bz2
    echo "Extracting package"
    tar xf $pma_filename.tar.bz2
    rm $pma_filename.tar.bz2

	# akky allow no password login
	sudo sed "s#\$cfg\['Servers'\]\[\$i\]\['AllowNoPassword'\] = false;#\$cfg\['Servers'\]\[\$i\]\['AllowNoPassword'\] = true;#g" /var/www/pma/config.sample.inc.php > /var/www/pma/config.inc.php
    sudo chmod 400 /var/www/pma/config.inc.php

    echo "Done."
fi

if [ ! -L pma ]; then
    ln -s $pma_filename pma
fi
