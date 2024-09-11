

echo "Instalador de FeavrOS"

echo "Instalando dependencias..."
pacman -S xorg xorg-server xorg-xinit

echo "Instalando Berry WM"
git clone https://github.com/JLErvin/berry
cd berry
make
make install
cd ..

echo "Instalando eventos"
git clone https://github.com/baskerville/sxhkd
cd sxhkd
make
make install
cd ..

echo "Instalando lanzador"
git clone https://git.suckless.org/dmenu
cd dmenu
make
make install
cd ..

echo "Instalando barra"
pacman -S polybar

echo "Instalando aplicaciónes"
pacman -S alacritty firefox alsa-utils brightnessctl nemo gedit

echo "Instalando suite ofimática"
pacman -S libreoffice-es

echo "Instalando juegos"
pacman -S 0ad wesnoth

echo "Creando directorios"
mkdir -p ~/.config
mkdir -p ~/.config/berry

echo "Copiando archivos"
cp -v .xinitrc ~/.xinitrc
cp -v picom.conf ~/.config/picom.conf
cp -v autostart sxhkdrc ~


echo "Configurando eventos"
cp -v window.sh ~/.config/berry/window.sh

echo "Configurando vim"
cp -v vimrc /etc/vimrc

startx





























