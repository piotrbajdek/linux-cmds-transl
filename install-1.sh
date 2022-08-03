# Apache License 2.0
# Copyright 2022 Piotr Bajdek

#!/usr/bin/env bash

nasm -f elf64 silverpin0.asm
nasm -f elf64 silverpin1.asm
nasm -f elf64 silverunpin0.asm
nasm -f elf64 silverunpin1.asm
nasm -f elf64 silverunpin2.asm
nasm -f elf64 silverunpin3.asm

ld -o silverpin0 silverpin0.o
ld -o silverpin1 silverpin1.o
ld -o silverunpin0 silverunpin0.o
ld -o silverunpin1 silverunpin1.o
ld -o silverunpin2 silverunpin2.o
ld -o silverunpin3 silverunpin3.o
