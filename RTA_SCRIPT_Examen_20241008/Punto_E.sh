#!/bin/bash

output_dir="repogit/UTNFRA_SO_1P2C_2024_-Cano_Bakir-/RTA_ARCHIVOS_Examen_20241008"
mkdir -p "$output_dir"
output_file="$output_dir/Filtro_Basico.txt"

memoria_total=$(grep MemTotal /proc/meminfo | awk '{print $2, $3}')

fabricante_chasis=$(sudo dmidecode -t chassis | grep Manufacturer | awk -F ': ' '{print $2}')

echo "Memoria Total: $memoria_total" > "$output_file"
echo "Fabricante del Chasis: $fabricante_chasis" >> "$output_file"


