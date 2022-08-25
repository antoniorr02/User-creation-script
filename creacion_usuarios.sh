#!/bin/bash

#$1 --> acción.
#$2 --> usuario.
#3 --> grupo.

if [[ $1 == "crear" ]]
then
	adduser --home /home/$2 --shell /bin/bash $2
fi

if [[ $1 == "borrar" ]]
then
	userdel -r $2
fi

if [[ $1 == "cambiar_contraseña" ]]
then
	passwd $2
fi

if [[ $1 == "add_grupo" ]]
then
	gpasswd -a $2 $3
fi
