#!/bin/bash


grep MemTotal /proc/meminfo | awk '{print $2, $3}' > repogit/UTNFRA_SO_1P2C_2024_-Cano_Bakir-/RTA_ARCHIVOS_Examen_20241008/Filtro_Basico.txt

sudo dmidecode -t chassis | grep Manufacturer | awk -F ': ' '{print $2}' >> repogit/UTNFRA_SO_1P2C_2024_-Cano_Bakir-/RTA_ARCHIVOS_Examen_20241008/Filtro_Basico.txt

