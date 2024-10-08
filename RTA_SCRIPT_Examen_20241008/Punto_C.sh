#!/bin/bash

# Crear los siguientes usuarios con su grupo:

sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores

sudo useradd -m -s /bin/bash -G p1c2_2024_gAlumno -p 1234 p1c2_2024_A1
sudo useradd -m -s /bin/bash -G p1c2_2024_gAlumno -p 1234 p1c2_2024_A2
sudo useradd -m -s /bin/bash -G p1c2_2024_gAlumno -p 1234 p1c2_2024_A3
sudo useradd -m -s /bin/bash -G p1c2_2024_gProfesores -p 1234 p1c2_2024_P1


sudo grep $(whoami) /etc/shadow

HASH DE MI CONTRASENA
$y$j9T$f7V.J8o8/5JXqaI3xUKKQ0$oND2iaEkOI22AcHc9kfKwylXqBi.VixFO/cPGuxMD..

sudo passwd p1c2_2024_A1
sudo passwd p1c2_2024_A2
sudo passwd p1c2_2024_A3
sudo passwd p1c2_2024_P1

# Ajustar los permisos para las siguientes carpetas y todo su contenido:
sudo chown p1c2_2024_A2 /Examenes-UTN/alumno_2
sudo chown p1c2_2024_A3 /Examenes-UTN/alumno_3
sudo chown p1c2_2024_P1:p1c2_2024_gProfesores /Examenes-UTN/profesores


sudo chmod 750 /Examenes-UTN/alumno_1
sudo chmod 760 /Examenes-UTN/alumno_2
sudo chmod 700 /Examenes-UTN/alumno_3
sudo chmod 755 /Examenes-UTN/profesores


# Crear un archivo “validar.txt” con la salida del comando whoami, con cada uno de los
# usuarios en sus respectivas carpetas. (alumno_1 , alumno_2, alumno_3 , profesores)

sudo -u p1c2_2024_A1 bash -c 'echo "$(whoami)" > /Examenes/alumno_1/validar.txt'
cat /Examen/alumno_1/validar.txt

sudo -u p1c2_2024_A2 bash -c 'echo "$(whoami)" > /Examenes/alumno_2/validar.txt'
cat /Examen/alumno_2/validar.txt

sudo -u p1c2_2024_A3 bash -c 'echo "$(whoami)" > /Examenes/alumno_3/validar.txt'
cat /Examen/alumno_3/validar.txt

sudo -u p1c2_2024_P1 bash -c 'echo "$(whoami)" > /Examenes/profesores/validar.txt'
cat /Examen/profesoress/validar.txt
