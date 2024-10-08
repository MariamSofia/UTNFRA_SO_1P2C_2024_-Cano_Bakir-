#!/bin/bash

# 1. Obtener la IP Pública
ip_publica=$(curl -s ifconfig.me)

# 2. Obtener el nombre de usuario
usuario=$(whoami)

# 3. Obtener el hash del usuario desde /etc/shadow
hash_usuario=$(sudo grep "^$usuario:" /etc/shadow | cut -d':' -f2)

# 4. Obtener la URL del repositorio Git
url_repositorio=$(git config --get remote.origin.url)

# Crear el archivo Filtro_Avanzado.txt
output_dir="repogit/UTNFRA_SO_1P2C_2024_-Cano_Bakir-/RTA_ARCHIVOS_Examen_$(date +%Y%m%d)"
mkdir -p "$output_dir"
output_file="$output_dir/Filtro_Avanzado.txt"

echo "Mi IP Publica es: $ip_publica" > "$output_file"
echo "Mi usuario es: $usuario" >> "$output_file"
echo "El Hash de mi Usuario es: $hash_usuario" >> "$output_file"
echo "La URL de mi repositorio es: $url_repositorio" >> "$output_file"

echo "Archivo Filtro_Avanzado.txt generado en $output_file"

