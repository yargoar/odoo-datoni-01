FROM odoo:16

# Copie os módulos e configurações do Odoo
COPY . /mnt/extra-addons
COPY ./config/odoo.conf /etc/odoo/

# Configuração de permissões
RUN chmod -R 777 /mnt/extra-addons && chmod -R 777 /etc/odoo/

# Expor a porta padrão do Odoo
EXPOSE 8069

CMD ["odoo"]
