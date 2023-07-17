# .dotfiles

Mis ficheros de configuración para:
 - zsh
 - Kitty
 - nvim


# Requisitos

Intalar stow:

`sudo apt install stow`

Clonar repo en la carpeta home:

`git clone git@github.com:javierjcf/.dotfiles.git dotfiles`
`cd dotfiles`

Stow funciona creando enlaces simbólicos en el directorio padre a donde lo ejecutamos.
**Es importante que la carpeta no exista sino stow no crea el enlace** Es decir, para la carpeta .config parece que no protesta, pero si dentro ya tenemos el fichero /kitty/kitty.conf no funcionará.

Ejemplo para nvim
`stow nvim`

Creará el enlace a lo que hay dentro de dicha carpeta en el directorio padre a donde esté el repo.

Como la carpeta nvim contiene la carpeta .config con su archivo init.vim, tendré un enlace simbólico con dicha estructura. Para zsh solo tengo el archivo .zshrc así que será aquí donde se descomprima

Cualquier cambio en los ficheros de configuración podrá subirse a github

---

# Cfgs

## zsh
Dependencias para alias de `ls` y `cat`:

- [lsd](https://github.com/Peltoche/ls)
- [bat](https://github.com/sharkdp/bat)

bat se puede instalar con el repositorio por defecto para que funcione el alias de batcat

## NVIM
Configuración actual en Lua, usando lazy.vim
