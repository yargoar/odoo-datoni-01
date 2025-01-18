FROM odoo:16.0

# Copiar o arquivo de configuração para o container
COPY ./odoo.conf /etc/odoo/odoo.conf

# Adicionar script de inicialização
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Expor porta padrão do Odoo
EXPOSE 8069

ENTRYPOINT ["/entrypoint.sh"]
