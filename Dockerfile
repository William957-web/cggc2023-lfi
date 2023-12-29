FROM dockerfiles/centos-lamp 

COPY index.php /var/www/html/index.php
COPY my.module /var/www/html/my.module

RUN rm /var/www/html/phpinfo.php

RUN echo 'WHALE{RRR4HHH_CGGC}' > /flag-$(xxd -l 6 -p /dev/urandom)
