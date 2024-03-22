# Server Side 

1. install apache
   ```bash
   apt-get update
   apt-get install apache2
   ```
2. persist apache across the reboots
    `systemctl enable apache2`

3. create package repository directory
   ```
   mkdir -p /var/www/html/ubuntu
   chown www-data:www-data /var/www/html/ubuntu
   ```

4. install apt-mirror utility
   `apt-get install apt-mirror`

5. config apt-mirror
   - create a backup from config file
       `cp /etc/apt/mirror.list /etc/apt/mirror.list.backup`
   - set the package repository directory
       `set base_path    /var/www/html/ubuntu`
   - you can see the config file in this project `./mirror.list`

6. start mirroring
   - run this `apt-mirror`
   - In Ubuntu 22.04, there are some issue noticed with apt-mirror command like it does not mirror CNF folder, 
       icon tar files and binary-i386, so to fix these issues, execute `fix-errors.sh` just one time.
   - create the following symbolic link so that we can access repository over the browser as well
   - `ln -s /var/spool/apt-mirror/mirror/archive.ubuntu.com /var/www/html/ubuntu`

7. scheduling mirroring using Cronjob
   - update the local repository every day at 01 AM
       `crontab -e` and insert this time: 00  01  *  *  *  /usr/bin/apt-mirror

# Client Side

1. edit /etc/apt/sources.list
   - ```
      http://archive.ubuntu.com/ubuntu
      to
      http://<local-repo>/ubuntu/archive.ubuntu.com/ubuntu
      ```
