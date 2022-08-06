# SILVERPIN

[silverpin](https://github.com/piotrbajdek/silverpin) is a set of simple aliases to pin and unpin deployments on [Fedora Silverblue](https://silverblue.fedoraproject.org/). It is a shell-independent solution for creating shortcuts for commands and, among other use cases, silverpin may be particularly helpful for users working in multiple shell environments besides the Fedora's default bash.

Please, note that silverpin only works on the x86-64 architecture.

# BINARY FILES

'silverpin' -- display help and program info

**All must be used with 'sudo':**

'silverpin0' -- alias for 'ostree admin pin 0'

'silverpin1' -- alias for 'ostree admin pin 1'

'silverunpin0' -- alias for 'ostree admin pin \--unpin 0'

'silverunpin1' -- alias for 'ostree admin pin \--unpin 1'

'silverunpin2' -- alias for 'ostree admin pin \--unpin 2'

'silverunpin3' -- alias for 'ostree admin pin \--unpin 3'

# INSTALLATION

First, install nasm in Toolbox: _sudo dnf install nasm_

[silverpin](https://github.com/piotrbajdek/silverpin) can installed either **(a)** by the use of the two scripts, first running [install-1.sh](https://github.com/piotrbajdek/silverpin/blob/main/install-1.sh) in Toolbox and then running [install-2.sh](https://github.com/piotrbajdek/silverpin/blob/main/install-2.sh) on Silverblue or **(b)** manually in 3 steps:

**(1)** [in Toolbox]

_nasm -f elf64 silverpin.asm_

_nasm -f elf64 silverpin0.asm_

_nasm -f elf64 silverpin1.asm_

_nasm -f elf64 silverunpin0.asm_

_nasm -f elf64 silverunpin1.asm_

_nasm -f elf64 silverunpin2.asm_

_nasm -f elf64 silverunpin3.asm_

**(2)** [in Toolbox]

_ld -o silverpin silverpin.o_

_ld -o silverpin0 silverpin0.o_

_ld -o silverpin1 silverpin1.o_

_ld -o silverunpin0 silverunpin0.o_

_ld -o silverunpin1 silverunpin1.o_

_ld -o silverunpin2 silverunpin2.o_

_ld -o silverunpin3 silverunpin3.o_

**(3)** [on Silverblue]

_sudo cp silverpin /var/usrlocal/bin/_

_sudo cp silverpin0 /var/usrlocal/bin/_

_sudo cp silverpin1 /var/usrlocal/bin/_

_sudo cp silverunpin0 /var/usrlocal/bin/_

_sudo cp silverunpin1 /var/usrlocal/bin/_

_sudo cp silverunpin2 /var/usrlocal/bin/_

_sudo cp silverunpin3 /var/usrlocal/bin/_

Alternatively, pre-assembled binaries can be downloaded [here](https://github.com/piotrbajdek/silverpin/releases/tag/v1.0.0). silverpin can be uninstalled by [uninstall.sh](https://github.com/piotrbajdek/silverpin/blob/main/uninstall.sh).
