  $ sudo apt update
  $ sudo apt install mysql-server@8.0.24
  $ sudo mysql_secure_installation

   -> Password prolicy state =2 => STRONG Length >= 8, numeric, mixed case, special characters and dictionary file.
   -> password: chanmysql
   -> Estimated strength of the password: 50
      Do you wish to continue with the password provided?(Press y|Y for Yes, any other key for No) : y
   -> Remove anonymous users? (Press y|Y for Yes, any other key for No) : y
   -> Remove anonymous users? (Press y|Y for Yes, any other key for No) : y

# check validate password in mysql
  $ show varibles like 'validate_password%';

# change validate password 
  $ set global validate_password.policy = 0 or 1 or 2

# create user in mysql
  $ create user 'chan'@'localhost' identified by 'Chan@234';

# restart mysql 
  $ sudo systemctl restart mysql

# check user in mysql
  $ select user, host from mysql.user;

# add privileges for user = root
  $ GRANT ALL PRIVILEGES ON *.* TO 'chan'@'localhost' WITH GRANT OPTION;
   
# addition memory for create user grant
  $ flush privileges

# install phpmyadmin
  $ sudo apt-get update
  $ sudo apt-get install phpmyadmin
  $ sudo ln -s /usr/share/phpmyadmin /var/www/html


# uninstall phpmyadmin
  $ sudo apt-get remove phpmyadmin or sudo apt-get purge phpmyadmin
  $ sudo dpkg-reconfigure phpmyadmin
  $ sudo apt-get autoremove
  $ sudo rm -vfR /usr/share/phpmyadmin

# install composer 
 $ sudo apt-get update
 $ sudo apt install unzip
 $ curl -sS https://getcomposer.org/installer -o composer-setup.php
 $ sudo php composer-setup.php --install-dir=/usr/bin --filename=composer
 $ composer
