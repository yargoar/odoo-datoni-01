FROM odoo:latest
WORKDIR /usr/src/app
CMD ["odoo", "--config=/etc/odoo/odoo.conf"]
