# terraform

config env > DEV.
-security group open > (rule p80, p22)
-Elastic IP assoc > instance ec2
-instance EC2
-shell-script in /scripts/bootstrap.sh > docker install > run container httpd:alpine
-volume httpd = /var/www/html:/usr/local/apache2/htdocs/
-wget archive.zip
-unzip > /var/www/html
-output = name, public_ip, private_ip, public_dns, region, instance_type
