@echo off


set f=clang


  :: assembly
gcc %f%.c  -S

  :: object file
gcc %f%.c  -c  -Wall -O2

  :: linking into executable
gcc %f%.o  -o %f%.exe  -s


pause