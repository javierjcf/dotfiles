# .dotfiles

Mis ficheros de configuración para:
 - Kitty
 - nvim


## Requisitos

Intalar stow:

`sudo apt install stow`

Clonar repo en la carpeta home:

`git clone git@github.com:javierjcf/.dotfiles.git dotfiles`

Stow funciona creando enlaces simbólicos en el directorio padre a donde lo ejecutamos.

Ejemplo para nvim

`stow nvim`

Creará el enlace a lo que hay dentro de dicha carpeta en el directorio padre a donde esté el repo.

Como la carpeta nvim contiene la carpeta .config con su archivo init.vim, tendré un enlace simbólico ocn dicha estructura.

Cualquier cambio en los ficheros de configuración podrá subirse a github

