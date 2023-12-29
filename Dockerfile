FROM dockerfiles/centos-lamp 

COPY index.php /var/www/html/index.php
COPY my.module /var/www/html/my.module

RUN rm /var/www/html/phpinfo.php

RUN echo 'CGGC{fake_flag}' > /flag-$(xxd -l 6 -p /dev/urandom)
