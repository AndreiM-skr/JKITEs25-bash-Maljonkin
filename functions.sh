#!/bin/bash

# Autor: Andrei Maljonkin
# Kuupaev: 17.09.2026
# Versioon: 1.0
# Funktsioonide teek system_info.sh jaoks

# Kuvab kasutajanime
kasutajanimi() {
echo "Kasutajanimi: $USER"
}

# Kuvab kuupaeva ja kellaaja
kuupaev() {
echo "Kuupaev ja kellaaeg:"
date
}

# Kuvab arvuti nime
arvutinimi() {
echo "Arvuti nimi:"
hostname
}

# Otsib  kaustast .txt faile
tekstifailid() {
for fail in *.txt
do
if [ -f "$fail" ]; then
echo "Leitud tekstifail: $fail"
fi
done
}

# Kontrollib. kas kasutaja on root
rootkontroll() {
if [ "$USER" = "root" ]; then
echo "Kasutaja on root."
else
echo "Kasutaja ei ole root."
fi
}

