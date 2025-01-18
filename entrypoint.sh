#!/bin/bash

# Esperar o PostgreSQL estar pronto
echo "Aguardando banco de dados..."
while ! pg_isready -h db -p 5432 > /dev/null 2> /dev/null; do
  sleep 1;
done

echo "Banco de dados está pronto. Iniciando o Odoo..."
exec odoo
